package metier;

import java.io.Serializable;

public class Manager implements Serializable {
	private static final long serialVersionUID = 1L;
	public int 	Idmanager;
	public String nom;
	public String prenom;
	public String login;
	public String password;
	public String cin;
	public String NCartecredit;
	public String permisConduite;
	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Manager(int idmanager, String nom, String prenom, String login, String password, String cin,
			String nCartecredit, String permisConduite) {
		super();
		Idmanager = idmanager;
		this.nom = nom;
		this.prenom = prenom;
		this.login = login;
		this.password = password;
		this.cin = cin;
		NCartecredit = nCartecredit;
		this.permisConduite = permisConduite;
	}
	public int getIdmanager() {
		return Idmanager;
	}
	public void setIdmanager(int idmanager) {
		Idmanager = idmanager;
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
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getNCartecredit() {
		return NCartecredit;
	}
	public void setNCartecredit(String nCartecredit) {
		NCartecredit = nCartecredit;
	}
	public String getPermisConduite() {
		return permisConduite;
	}
	public void setPermisConduite(String permisConduite) {
		this.permisConduite = permisConduite;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
