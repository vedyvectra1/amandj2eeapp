package com.j2ee.ci.database;

public class Commentaires {
    
    private int id_commentaire;
    private int id_billet;
    private String auteur;
    private String commentaire;
    private String date_commentaire;

    public Commentaires(int id_commentaire, int id_billet, String auteur, String commentaire, String date_commentaire) {
        this.id_commentaire = id_commentaire;
        this.id_billet = id_billet;
        this.auteur = auteur;
        this.commentaire = commentaire;
        this.date_commentaire = date_commentaire;
    }

    public int getId_commentaire() {
        return id_commentaire;
    }

    public void setId_commentaire(int id_commentaire) {
        this.id_commentaire = id_commentaire;
    }

    public int getId_billet() {
        return id_billet;
    }

    public void setId_billet(int id_billet) {
        this.id_billet = id_billet;
    }

    public String getAuteur() {
        return auteur;
    }

    public void setAuteur(String auteur) {
        this.auteur = auteur;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }

    public String getDate_commentaire() {
        return date_commentaire;
    }

    public void setDate_commentaire(String date_commentaire) {
        this.date_commentaire = date_commentaire;
    }
}
