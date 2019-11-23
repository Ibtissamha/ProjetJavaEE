package metier;

import java.io.Serializable;

public class Manager implements Serializable {
	private static final long serialVersionUID = 1L;
	public int 	IdManager;
	public String Nom;
	public String Prenom;
	public String CIN;
	public String NCarteCredit;
	public String PermisConduite;
	public int getIdManager() {
		return IdManager;
	}
	public void setIdManager(int idManager) {
		IdManager = idManager;
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
	public String getNCarteCredit() {
		return NCarteCredit;
	}
	public void setNCarteCredit(String nCarteCredit) {
		NCarteCredit = nCarteCredit;
	}
	public String getPermisConduite() {
		return PermisConduite;
	}
	public void setPermisConduite(String permisConduite) {
		PermisConduite = permisConduite;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Manager(int idManager, String nom, String prenom, String login, String password, String cIN,
			String nCarteCredit, String permisConduite) {
		super();
		IdManager = idManager;
		Nom = nom;
		Prenom = prenom;
		CIN = cIN;
		NCarteCredit = nCarteCredit;
		PermisConduite = permisConduite;
	}
	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}
}
	
	