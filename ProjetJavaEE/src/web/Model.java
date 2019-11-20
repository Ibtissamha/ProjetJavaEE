package web;

import java.util.ArrayList;
import java.util.List;

import metier.Client;
import metier.Manager;
import metier.Voiture;

public class Model {
	private String login;
	private String password;
	private List<Voiture> voitures=new ArrayList<Voiture>();
	private List<Voiture> voituresSolde=new ArrayList<Voiture>();
	private List<Manager> managers=new ArrayList<Manager>();
	private List<Client> clients=new ArrayList<Client>();
	public List<Voiture> getVoituresSolde() {
		return voituresSolde;
	}
	public List<Manager> getManagers() {
		return managers;
	}
	public void setManagers(List<Manager> managers) {
		this.managers = managers;
	}
	public List<Client> getClients() {
		return clients;
	}
	public void setClients(List<Client> clients) {
		this.clients = clients;
	}
	public void setVoituresSolde(List<Voiture> voituresSolde) {
		this.voituresSolde = voituresSolde;
	}
	private Voiture voiture=new Voiture();
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<Voiture> getVoitures() {
		return voitures;
	}
	public void setVoitures(List<Voiture> Voitures) {
		this.voitures = Voitures;
	}
	public Model() {
		super();
	}
	public Model(String login, String password, List<Voiture> voitures, Voiture voiture) {
		super();
		this.login = login;
		this.password = password;
		this.voitures = voitures;
		this.voiture = voiture;
	}
	public Voiture getVoiture() {
		return voiture;
	}
	public void setVoiture(Voiture voiture) {
		this.voiture = voiture;
	}

}
