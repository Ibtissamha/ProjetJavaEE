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
			List<Manager> manages=metier.listManagers();
			model.setManagers(manages);
			List<Client> clients=metier.listClient();
			model.setClients(clients);
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
