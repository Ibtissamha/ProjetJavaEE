package web;

import metier.Password;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.Client;
import metier.Imetier;
import metier.Manager;
import metier.Voiture;
import metier.metierimpl;

@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private Imetier metier;
    public ControllerServlet() {
    	metier= new metierimpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		String act=request.getParameter("act");
		String ac=request.getParameter("ac");
		if(ac != null)
		{
			if(ac.equals("ajax"))
			{
			String pass1=request.getParameter("Password");
			String login1=request.getParameter("Name");
			pass1=Password.hash(pass1);
			String t=metier.checkUser(login1,pass1);
			String[] g;
		    if(t.equals("0&0")) response.getWriter().write("error");
		    else
		    	{
		    	g=t.split("&");
		    	HttpSession s=request.getSession();
		    	s.setAttribute("id_user",Integer.parseInt(g[0]));
		    	s.setAttribute("role",Integer.parseInt(g[1]));
		    	response.getWriter().write("");
		    	}
			}
			else if(ac.equals("ajaxIns"))
			{
				String Email,Nom,Prenom,CIN,Qs,Pass,Pass1,Adresse,Tel;
				Email=request.getParameter("Email");Email=request.getParameter("Email");
				Nom=request.getParameter("Nom");Prenom=request.getParameter("Prenom");
				CIN=request.getParameter("Cin");Qs=request.getParameter("Qs");
				Pass=request.getParameter("Password");Pass1=request.getParameter("Password1");
				Adresse=request.getParameter("Adresse");Tel=request.getParameter("Tel");
				if(Email.equals("") | Nom.equals("") | Prenom.equals("") | CIN.equals("") | Tel.equals("") | Qs.equals("") | Pass.equals("") | Pass1.equals("") | !Pass.equals(Pass1))
					response.getWriter().write("ErrorReq");
				else
				{
					Client c=new Client();
					c.setNom(Nom);c.setPrenom(Prenom);c.setCIN(CIN);c.setAdresse(Adresse);c.setTel(Integer.parseInt(Tel));
					c.setEmail(Email);c.setPass(Password.hash(Pass));c.setQs(Qs);
					int t=c.save();
					if(t!=0)
					{
						HttpSession s=request.getSession();
						s.setAttribute("id_user",t);
						s.setAttribute("role",1);
						response.getWriter().write(t);
					}
					else response.getWriter().write("ErrorReq");
				}
			}
		}
		else {
		Model model=new Model();
		List<Voiture> voitures=metier.listVoitures();
		model.setVoitures(voitures);
	    List<Voiture> voituresSolde=metier.listVoituresSolde();
		model.setVoituresSolde(voituresSolde);
	    request.setAttribute("model", model);
	  if(action!=null)
	  {
		if(action.equals("Accueil"))
		{
			request.getRequestDispatcher("VueClient.jsp").forward(request, response);
		}
		else if(action.equals("Archive"))
		{
			request.getRequestDispatcher("Archive.jsp").forward(request, response);
		}
		else if(action.equals("Contact"))
		{
			request.getRequestDispatcher("Contact.jsp").forward(request, response);
		}
		else if(action.equals("Admin"))
		{
			List<Manager> managers=metier.listManagers();
			model.setManagers(managers);
			List<Client> clients=metier.listClient();
			model.setClients(clients);
			request.setAttribute("model", model);
			request.getRequestDispatcher("VueAdmin.jsp").forward(request, response);
		}
		else if(action.equals("Manager"))
		{
			request.getRequestDispatcher("VueManager.jsp").forward(request, response);
		}
		else if(action.equals("Voit"))
		{
			model.setMarque(request.getParameter("search"));
			  List<Voiture> voit=metier.VoituresParMC(model.getMarque());
			  model.setVoituresMC(voit);
			request.getRequestDispatcher("VueManager.jsp").forward(request, response);
			
		}
		else if(action.equals("AjouterM")) 
		{ 
			List<Manager> managers=metier.listManagers();
			model.setManagers(managers);
			List<Client> clients=metier.listClient();
			model.setClients(clients);
			request.setAttribute("model", model);
	    	try {
			  model.getManager().setNom(request.getParameter("Nom"));
			  model.getManager().setPrenom(request.getParameter("Prenom"));
			  model.getManager().setCIN(request.getParameter("CIN"));
			  model.getManager().setNCarteCredit(request.getParameter("NCarteCredit"));
			  model.getManager().setPermisConduite(request.getParameter("PermisConduite"));
			  metier.addManager(model.getManager());
			  model.setManagers(metier.listManagers()); 
			  }catch(Exception e) {
			  model.setErreur(e.getMessage()); 
			  }
			request.getRequestDispatcher("VueAdmin.jsp").forward(request, response);
		}
		else if(action.equals("AjouterC")) 
		{ 
			List<Manager> managers=metier.listManagers();
			model.setManagers(managers);
			List<Client> clients=metier.listClient();
			model.setClients(clients);
			request.setAttribute("model", model);
	    	try {
			  model.getClient().setNom(request.getParameter("Nom"));
			  model.getClient().setPrenom(request.getParameter("Prenom"));
			  model.getClient().setCIN(request.getParameter("CIN"));
			  model.getClient().setAdresse(request.getParameter("Adresse"));
			  model.getClient().setTel(Integer.parseInt(request.getParameter("Tel")));
			  metier.addClient(model.getClient());
			  model.setClients(metier.listClient()); 
			  }catch(Exception e) {
			  model.setErreur(e.getMessage()); 
			  }
			request.getRequestDispatcher("VueAdmin.jsp").forward(request, response);
		}
		else if(action.equals("AjouterV")) 
		{ 
			
	    	try {
			  model.getVoiture().setMatricule(request.getParameter("Matricule"));
			  model.getVoiture().setModele(request.getParameter("Modele"));
			  model.getVoiture().setMarque(request.getParameter("Marque"));
			  model.getVoiture().setMoteur(request.getParameter("Moteur"));
			  model.getVoiture().setPrix(Double.parseDouble(request.getParameter("Prix")));
			  model.getVoiture().setChemin_img(request.getParameter("chemin_img"));
			  model.getVoiture().setSolde(Integer.parseInt(request.getParameter("Solde")));
			  metier.addVoiture(model.getVoiture());
			  model.setVoitures(metier.listVoitures()); 
			  }catch(Exception e) {
			  model.setErreur(e.getMessage()); 
			  }
			request.getRequestDispatcher("VueManager.jsp").forward(request, response);
		}
		else if(action.equals("deleteM"))
		{
			List<Manager> managers=metier.listManagers();
			model.setManagers(managers);
			List<Client> clients=metier.listClient();
			model.setClients(clients);
			request.setAttribute("model", model);
			int id=Integer.parseInt(request.getParameter("id"));
			metier.deleteManager(id);
			model.setManagers(metier.listManagers());
			request.getRequestDispatcher("VueAdmin.jsp").forward(request, response);
		}
		else if(action.equals("deleteV"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			metier.deleteVoiture(id);
			model.setVoitures(metier.listVoitures());
			request.getRequestDispatcher("VueManager.jsp").forward(request, response);
		}
		else if(action.equals("deleteC"))
		{
			List<Manager> managers=metier.listManagers();
			model.setManagers(managers);
			List<Client> clients=metier.listClient();
			model.setClients(clients);
			request.setAttribute("model", model);
			int id=Integer.parseInt(request.getParameter("id"));
			metier.deleteClient(id);
			model.setClients(metier.listClient());
			request.getRequestDispatcher("VueAdmin.jsp").forward(request, response);
		}
		else if(action.equals("ModifierC"))
		{
			List<Manager> managers=metier.listManagers();
			model.setManagers(managers);
			List<Client> clients=metier.listClient();
			model.setClients(clients);
			request.setAttribute("model", model);
			model.getClient().setNom(request.getParameter("Nom"));
			model.getClient().setPrenom(request.getParameter("Prenom"));
			model.getClient().setCIN(request.getParameter("CIN"));
			model.getClient().setAdresse(request.getParameter("Adresse"));
	        model.getClient().setTel(Integer.parseInt(request.getParameter("Tel")));
			metier.updateClient(model.getClient());
			model.setClients(metier.listClient());
			request.getRequestDispatcher("VueAdmin.jsp").forward(request, response);
		}
		else if(action.equals("Chercher"))
		{
			model.setMarque(request.getParameter("search"));
			List<Voiture> voit=metier.VoituresParMC(model.getMarque());
			  model.setVoituresMC(voit);
			  request.getRequestDispatcher("VueClient.jsp").forward(request, response);
		}
		else if(action.equals("Cherch"))
		{
			List<Manager> managers=metier.listManagers();
			model.setManagers(managers);
			List<Client> clients=metier.listClient();
			model.setClients(clients);
			request.setAttribute("model", model);
			model.setMarque(request.getParameter("search"));
			List<Voiture> voit=metier.VoituresParMC(model.getMarque());
			  model.setVoituresMC(voit);
			  request.getRequestDispatcher("VueAdmin.jsp").forward(request, response);
		}
			 
		else if(action.equals("logout"))
		{
			HttpSession s=request.getSession();
			s.invalidate();
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else if(action.equals("Reset"))
		{
			String email=request.getParameter("Email");
			request.setAttribute("error","L'email n'exist pas dans la base de données !");
			request.getRequestDispatcher("Reciperation.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	  }
	  else
	  {
	     request.getRequestDispatcher("index.jsp").forward(request, response);
	  }

		
	}}

}
