package metier;

import java.io.Serializable;

public class Client implements Serializable{
	private static final long serialVersionUID = 1L;
	public int IdClient;
	public String Nom;
	public String Prenom;
	public String CIN;
	public String Adresse;
	public int Tel;
	public int getIdClient() {
		return IdClient;
	}
	public void setIdClient(int idClient) {
		IdClient = idClient;
	}
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getPrenom() {
		return Prenom;
	}
	public void setPrenom(String prenom) {
		Prenom = prenom;
	}
	public String getCIN() {
		return CIN;
	}
	public void setCIN(String cIN) {
		CIN = cIN;
	}
	public String getAdresse() {
		return Adresse;
	}
	public void setAdresse(String adresse) {
		Adresse = adresse;
	}
	public int getTel() {
		return Tel;
	}
	public void setTel(int tel) {
		Tel = tel;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Client(int idClient, String nom, String prenom, String cIN, String adresse, int tel, String login,
			String password) {
		super();
		IdClient = idClient;
		Nom = nom;
		Prenom = prenom;
		CIN = cIN;
		Adresse = adresse;
		Tel = tel;
	}
	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}
}