package metier;

import java.io.Serializable;

public class Personne implements Serializable{
	private static final long serialVersionUID = 1L;
	public int id;
	public String pseudo;
	public String mail;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public Personne(int id, String pseudo, String mail) {
		super();
		this.id = id;
		this.pseudo = pseudo;
		this.mail = mail;
	}
	public Personne() {
		super();
		// TODO Auto-generated constructor stub
	}
}
	