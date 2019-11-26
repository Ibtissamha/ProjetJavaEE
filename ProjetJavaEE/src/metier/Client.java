package metier;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Client implements Serializable{
	private static final long serialVersionUID = 1L;
	public int IdClient;
	public String Nom;
	public String Prenom;
	public String CIN;
	public String Adresse;
	public int Tel;
	public String email;
	public String pass;
	public String qs;
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
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getQs() {
		return qs;
	}
	public void setQs(String qs) {
		this.qs = qs;
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
	}
	public int save()
	{
		int keyUser=0,keyClient=0;
		Connection con=SingletonConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO user(username,password,role,qs) values('"+email+"','"+pass+"',1,'"+qs+"');");
			int t=ps.executeUpdate(); 
			if(t!=0) {
				ps=con.prepareStatement("select id_user from user where username='"+email+"' and password='"+pass+"';");
				ResultSet rs=ps.executeQuery();
				while(rs.next()) keyUser=rs.getInt("id_user");
				ps=con.prepareStatement("INSERT INTO client(Nom,Prenom,CIN,Adresse,Tel,id_user) values('"+Nom+"','"+Prenom+"','"+CIN+"','"+Adresse+"',"+Tel+","+keyUser+");");
				t=ps.executeUpdate();
				if(t!=0) {
					ps=con.prepareStatement("select IdClient from client where id_user="+keyUser+";");
					rs=ps.executeQuery();
					while(rs.next()) keyClient=rs.getInt("IdClient");
					return keyClient;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return keyClient;
	}
//	public static void main(String[] args)
//	{
//		Client c=new Client();
//		c.setNom("salim");c.setPrenom("inaji");c.setCIN("ZT244");c.setAdresse("hay kalaa");c.setTel(0666524315);
//		c.setEmail("salim@gmail.com");c.setPass("XXXXXX");c.setQs("Suq kala");
//		int t=c.save();
//		System.out.println(t);
//		
//	}
}