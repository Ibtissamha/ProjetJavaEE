package metier;

import java.io.Serializable;

public class Client implements Serializable{
	private static final long serialVersionUID = 1L;
	public int idClient;
	public String nom;
	public String prenom;
	public String cin;
	public String adresse;
	public int tel;
	public String login;
	public String password;
	public Client(int idClient, String nom, String prenom, String cin, String adresse, int tel, String login,
			String password) {
		super();
		this.idClient = idClient;
		this.nom = nom;
		this.prenom = prenom;
		this.cin = cin;
		this.adresse = adresse;
		this.tel = tel;
		this.login = login;
		this.password = password;
	}
	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getIdClient() {
		return idClient;
	}
	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
