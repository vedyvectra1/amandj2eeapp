package com.j2ee.ci.database;

public class Membres {
	private int id_membre;
    private String nom;
    private String prenoms;
    private String email;
    private String pseudo;
    private String passe;
    private String pays;
    private String ville;
    private String entreprise;
    private String date_inscription;
    //private  Connection connection;
    
    public Membres(int id_membre, String nom, String prenoms, String email, String pseudo, String passe, String pays, String ville, String entreprise, String date_inscription) {
    	this.id_membre = id_membre;
        this.nom = nom;
        this.prenoms = prenoms;
        this.email = email;
        this.pseudo = pseudo;
        this.passe = passe;
        this.pays = pays;
        this.ville = ville;
        this.entreprise = entreprise;
        this.date_inscription = date_inscription;
        
    }

    /*public Membres(String nom, String prenoms, String email, String pseudo, String passe, Connection connection) {
        this.nom = nom;
        this.prenoms = prenoms;
        this.email = email;
        this.pseudo = pseudo;
        this.passe = passe;
        this.connection = connection;
        try {
            PreparedStatement pst = (PreparedStatement) this.connection.prepareStatement("insert into membres (nom, prenoms, email, pseudo, passe, date_inscription) values (?,?,?,?,?,DEFAULT);");
            pst.setString(1,this.nom);
            pst.setString(2,this.prenoms);
            pst.setString(3,this.email);
            pst.setString(4,this.pseudo);
            pst.setString(5,this.passe);
            int rs = pst.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
            System.out.println("Something went wrong !! Please try again.");

        }
        
    }*/

    public int getId_membre() {
        return id_membre;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenoms() {
        return prenoms;
    }

    public String getEmail() {
        return email;
    }

    public String getPseudo() {
        return pseudo;
    }

    public String getPasse() {
        return passe;
    }

    public String getDate_inscription() {
        return date_inscription;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenoms(String prenoms) {
        this.prenoms = prenoms;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

	public String getEntreprise() {
		return entreprise;
	}

	public void setEntreprise(String entreprise) {
		this.entreprise = entreprise;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getPays() {
		return pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

}
