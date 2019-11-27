package metier;

import java.io.Serializable;
import java.sql.Blob;

public class Voiture implements Serializable{
	private static final long serialVersionUID = 1L;
	public int IdVoiture;
	public String Matricule;
	public String Modele;
	public String Marque;
	public String Moteur;
	public double Prix ;
	public String chemin_img;
	public int solde;
	public int getSolde() {
		return solde;
	}
	public void setSolde(int solde) {
		this.solde = solde;
	}
	
	public Voiture(int idVoiture, String matricule, String modele, String marque, String moteur, double prix,
			String chemin_img, int solde) {
		super();
		IdVoiture = idVoiture;
		Matricule = matricule;
		Modele = modele;
		Marque = marque;
		Moteur = moteur;
		Prix = prix;
		this.chemin_img = chemin_img;
		this.solde = solde;
	}
	public String getChemin_img() {
		return chemin_img;
	}
	public void setChemin_img(String chemin_img) {
		this.chemin_img = chemin_img;
	}
	public Voiture() {
		super();
		
	}
	public int getIdVoiture() {
		return IdVoiture;
	}
	public void setIdVoiture(int idVoiture) {
		IdVoiture = idVoiture;
	}
	public String getMatricule() {
		return Matricule;
	}
	public void setMatricule(String matricule) {
		Matricule = matricule;
	}
	public String getModele() {
		return Modele;
	}
	public void setModele(String modele) {
		Modele = modele;
	}
	public String getMarque() {
		return Marque;
	}
	public void setMarque(String marque) {
		Marque = marque;
	}
	public String getMoteur() {
		return Moteur;
	}
	public void setMoteur(String moteur) {
		Moteur = moteur;
	}
	public double getPrix() {
		return Prix;
	}
	public void setPrix(double prix) {
		Prix = prix;
	
	
	}

}
