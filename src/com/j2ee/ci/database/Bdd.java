package com.j2ee.ci.database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.sql.DriverManager;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class Bdd {
	
	private Connection connection;
	public String connected = new String("false");
	public Membres membre ;
	public Billets billet;
	public Commentaires commentaire;
	
	public HashMap<String, Object> hashmap = new HashMap<String, Object>();
	
	public Bdd () {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/projetj2ee";
			String user = "root";
			String password = "root";
			Connection conn = (Connection) DriverManager.getConnection(url, user, password);
			this.connection = conn;
			
		}catch (Exception e) {
            e.printStackTrace();
        }
		
	}
	
	public void createMembre(String nom, String prenoms, String email, String pseudo, String passe) {
		
		try {
            PreparedStatement pst = (PreparedStatement) this.connection.prepareStatement("insert into membres (nom, prenoms, email, pseudo, passe, date_inscription) values (?,?,?,?,?,DEFAULT);");
            pst.setString(1,nom);
            pst.setString(2,prenoms);
            pst.setString(3,email);
            pst.setString(4,pseudo);
            pst.setString(5,passe);
            int rs = pst.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
            System.out.println("Something went wrong !! Please try again.");

        }
		
	}
	
	public void createBillet(String auteur, String titre, String contenu) {
		
		try {
            PreparedStatement pst = (PreparedStatement) this.connection.prepareStatement("insert into billets (auteur, titre, contenu, date_creation) values (?,?,?,DEFAULT);");
            pst.setString(1,auteur);
            pst.setString(2,titre);
            pst.setString(3,contenu);
            int rs = pst.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
            System.out.println("Something went wrong !! Please try again.");

        }
		
	}

	public void createCommentaire(int id_billet, String auteur, String commentaire) {
		
		try {
	        PreparedStatement pst = (PreparedStatement) this.connection.prepareStatement("insert into commentaires (id_billet, auteur, commentaire, date_commentaire) values (?,?,?,DEFAULT);");
	        pst.setInt(1,id_billet);
	        pst.setString(2,auteur);
	        pst.setString(3,commentaire);
	        int rs = pst.executeUpdate();
	    }catch(Exception e){
	        System.out.println(e);
	        System.out.println("Something went wrong !! Please try again.");
	
	    }
		
	}
	
	public Membres getMembreByLog(String user, String password) {
		
		
		try {

			String sql = "SELECT * FROM membres WHERE pseudo = '"+user+"' and passe = '"+password+"'";
            ResultSet rs = this.connection.createStatement().executeQuery(sql);

            while (rs.next()) {
                int id_membre = rs.getInt("id_membre");
                String nom = rs.getString("nom");
                String prenoms = rs.getString("prenoms");
                String email = rs.getString("email");
                String pseudo = rs.getString("pseudo");
                String passe = rs.getString("passe");
                String pays = rs.getString("pays");
                String ville = rs.getString("ville");
                String entreprise = rs.getString("entreprise");
                String date_inscription = rs.getString("date_inscription");
               
                this.membre = new Membres(id_membre, nom, prenoms, email, pseudo, passe, pays, ville, entreprise, date_inscription);
                this.connected = "true";
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
		return this.membre;
	}
	
	public  ArrayList<Billets> getAllBillet() {
		ArrayList<Billets> liste = new ArrayList<>();
		
		try {
			

			String sql = "SELECT id_billet, auteur, titre, contenu, DATE_FORMAT(date_creation,'%d/%m/%Y') as date_creation FROM billets LIMIT 10";
            ResultSet rs = this.connection.createStatement().executeQuery(sql);
            while (rs.next()) {
            	int id_billet = rs.getInt("id_billet");
                String auteur = rs.getString("auteur");
                String titre = rs.getString("titre");
                String contenu = rs.getString("contenu");
                String date_creation = rs.getString("date_creation");
                this.billet = new Billets(id_billet, auteur, titre, contenu, date_creation);
                liste.add(new Billets(id_billet, auteur, titre, contenu, date_creation));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
		return liste;
	}
	
	public  ArrayList<Billets> getBilletById(int id) {
		ArrayList<Billets> liste = new ArrayList<>();
		
		try {
			

			String sql = "SELECT id_billet, auteur, titre, contenu, DATE_FORMAT(date_creation,'%d/%m/%Y') as date_creation FROM billets  where id_billet = '"+id+"'";
            ResultSet rs = this.connection.createStatement().executeQuery(sql);
            while (rs.next()) {
            	int id_billet = rs.getInt("id_billet");
                String auteur = rs.getString("auteur");
                String titre = rs.getString("titre");
                String contenu = rs.getString("contenu");
                String date_creation = rs.getString("date_creation");
                this.billet = new Billets(id_billet, auteur, titre, contenu, date_creation);
                liste.add(new Billets(id_billet, auteur, titre, contenu, date_creation));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
		return liste;
	}
	
	public  ArrayList<Commentaires> getCommentsById(int id_billet) {
		ArrayList<Commentaires> liste = new ArrayList<>();
		
		try {
			

			String sql = "SELECT id_commentaire, id_billet, auteur, commentaire, DATE_FORMAT(date_commentaire,'%d/%m/%Y') as date_commentaire FROM commentaires  where id_billet = '"+id_billet+"'";
            ResultSet rs = this.connection.createStatement().executeQuery(sql);
            while (rs.next()) {
            	int id_commentaire = rs.getInt("id_commentaire");
            	int id_bi = rs.getInt("id_billet");
                String auteur = rs.getString("auteur");
                String commentaire = rs.getString("commentaire");
                String date_commentaire = rs.getString("date_commentaire");
                this.commentaire = new Commentaires(id_commentaire, id_bi, auteur, commentaire, date_commentaire);
                liste.add(this.commentaire);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
		return liste;
	}
	
	

    public void setMembrePays(String pays, String pseudo) {
    	try {
            PreparedStatement pst = (PreparedStatement) this.connection.prepareStatement("update membres  set pays = ? where pseudo = ?;");
            pst.setString(1,pays);
            pst.setString(2,pseudo);
            int rs = pst.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
            System.out.println("Something went wrong !! Please try again.");

        }
    }

    public void setMembreVille(String ville, String pseudo) {
    	try {
            PreparedStatement pst = (PreparedStatement) this.connection.prepareStatement("update membres  set ville = ? where pseudo = ?;");
            pst.setString(1,ville);
            pst.setString(2,pseudo);
            int rs = pst.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
            System.out.println("Something went wrong !! Please try again.");

        }
    }
    
    public void setMembreEntreprise(String entreprise, String pseudo) {
    	try {
            PreparedStatement pst = (PreparedStatement) this.connection.prepareStatement("update membres  set entreprise = ? where pseudo = ?;");
            pst.setString(1,entreprise);
            pst.setString(2,pseudo);
            int rs = pst.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
            System.out.println("Something went wrong !! Please try again.");

        }
    }
	

}
