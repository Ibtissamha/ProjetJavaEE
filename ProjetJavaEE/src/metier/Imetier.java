package metier;

import java.util.List;

public interface Imetier {
	public List<Personne> listPersonnes();
	public List<Voiture> listVoitures();
	public List<Voiture> listVoituresSolde();
	public List<Manager> listManagers();
	public List<Client> listClient();
	public void createAdmin();
	
}
