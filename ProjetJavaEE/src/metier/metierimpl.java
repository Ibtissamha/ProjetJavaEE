package metier;
import metier.Password;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class metierimpl implements Imetier{

	@Override
	public List<Personne> listPersonnes() {
		List<Personne> per=new ArrayList<Personne>();
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from members ");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Personne p=new Personne();
				p.setId(rs.getInt("id"));
				p.setPseudo(rs.getString("pseudo"));
				p.setMail(rs.getString("mail"));
				per.add(p);
			}
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return per;
	}

	@Override
	public List<Voiture> listVoitures() {
		
		List<Voiture> voit=new ArrayList<Voiture>();
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement vs=conn.prepareStatement("select * from voiture ");
			ResultSet rs=vs.executeQuery();
			while(rs.next()) {
				Voiture v=new Voiture();
				v.setIdVoiture(rs.getInt("IdVoiture"));
				v.setMatricule(rs.getString("Matricule"));
				v.setModele(rs.getString("Modele"));
				v.setMarque(rs.getString("Marque"));
				v.setMoteur(rs.getString("Moteur"));
				v.setPrix(rs.getDouble("Prix"));
				v.setChemin_img(rs.getString("chemin_img"));
				v.setImg_V(rs.getBlob("img_V"));
				v.setSolde(rs.getInt("solde"));
				voit.add(v);
			}
			vs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return voit;
	}
	@Override
	public List<Voiture> listVoituresSolde() {
		
		List<Voiture> voit=new ArrayList<Voiture>();
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement vs=conn.prepareStatement("select * from voiture where solde != 0 LIMIT 4");
			ResultSet rs=vs.executeQuery();
			while(rs.next()) {
				Voiture v=new Voiture();
				v.setIdVoiture(rs.getInt("IdVoiture"));
				v.setMatricule(rs.getString("Matricule"));
				v.setModele(rs.getString("Modele"));
				v.setMarque(rs.getString("Marque"));
				v.setMoteur(rs.getString("Moteur"));
				v.setPrix(rs.getDouble("Prix"));
				v.setChemin_img(rs.getString("chemin_img"));
				v.setImg_V(rs.getBlob("img_V"));
				v.setSolde(rs.getInt("solde"));
				voit.add(v);
			}
			vs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return voit;
	}

	@Override
	public List<Manager> listManagers() {
		List<Manager> Man=new ArrayList<Manager>();
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement vs=conn.prepareStatement("select * from manager ");
			ResultSet rs=vs.executeQuery();
			while(rs.next()) {
				Manager M=new Manager();
				M.setIdManager(rs.getInt("IdManager"));
				M.setNom(rs.getString("Nom"));
				M.setPrenom(rs.getString("Prenom"));
				M.setLogin(rs.getString("Login"));
				M.setPassword(rs.getString("Password"));
				M.setCIN(rs.getString("CIN"));
				M.setNCarteCredit(rs.getString("NCarteCredit"));
				M.setPermisConduite(rs.getString("PermisConduite"));
				Man.add(M);
			}
			vs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Man;
	}

	@Override
	public List<Client> listClient() {
		List<Client> Cl=new ArrayList<Client>();
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement vs=conn.prepareStatement("select * from client ");
			ResultSet rs=vs.executeQuery();
			while(rs.next()) {
				Client C=new Client();
				C.setIdClient(rs.getInt("IdClient"));
				C.setNom(rs.getString("Nom"));
				C.setPrenom(rs.getString("Prenom"));
				C.setCIN(rs.getString("CIN"));
				C.setAdresse(rs.getString("Adresse"));
				C.setTel(rs.getInt("Tel"));
				Cl.add(C);
			}
			vs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Cl;
	}
	public void createAdmin()
	{
		Connection con=SingletonConnection.getConnection();
		String pass=Password.hash("admin");
		try {
			Statement st=con.createStatement();
			st.executeUpdate("insert into user(username,password,role) values('admin@gmail.com','"+pass+"',3);");
			st.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
