package metier;

import java.util.List;

public interface Imetier {
	public List<Personne> listPersonnes();
	public List<Voiture> listVoitures();
	public List<Voiture> listVoituresSolde();
	public List<Manager> listManagers();
	public List<Client> listClient();
	public void addManager(Manager m);
	public void addClient(Client c);
	public void deleteManager(int id);
	public void deleteClient(int id) ;
	public String checkUser(String login,String pass);
	
}
