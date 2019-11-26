package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			 
		else {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	  }
	  else
	  {
	     request.getRequestDispatcher("index.jsp").forward(request, response);
	  }

		
	}

}
