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
	@Override
	public void addManager(Manager m) {
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement
					("insert into Manager (Nom,Prenom,CIN,NCarteCredit,PermisConduite) values (?,?,?,?,?) ");
			ps.setString(1, m.getNom());
			ps.setString(2, m.getPrenom());
			ps.setString(3, m.getCIN());
			ps.setString(4, m.getNCarteCredit());
			ps.setString(5, m.getPermisConduite());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void addClient(Client c) {
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement ps=conn.prepareStatement
					("insert into Client (Nom,Prenom,CIN,Adresse,Tel) values (?,?,?,?,?) ");
			ps.setString(1, c.getNom());
			ps.setString(2, c.getPrenom());
			ps.setString(3, c.getCIN());
			ps.setString(4, c.getAdresse());
			ps.setInt(5, c.getTel());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		public void deleteManager(int id) 
		{
			Connection con=SingletonConnection.getConnection();
			try {
				PreparedStatement ps=con.prepareStatement
						("delete from manager  where IdManager=? ");
				ps.setInt(1, id);
				ps.executeUpdate();
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		public void deleteClient(int id) 
		{
			Connection con=SingletonConnection.getConnection();
			try {
				PreparedStatement ps=con.prepareStatement
						("delete from client  where IdClient=? ");
				ps.setInt(1, id);
				ps.executeUpdate();
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		public String checkUser(String login,String pass) {
			int i=0,r=0;
			Connection con=SingletonConnection.getConnection();
			try {
				
				PreparedStatement ps=con.prepareStatement("SELECT id_user,role from user where username='"+login+"' and password='"+pass+"';");
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {i=rs.getInt("id_user");r=rs.getInt("role");}
				ps.close();
				return i+"&"+r;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return "";
			
		}
	}
