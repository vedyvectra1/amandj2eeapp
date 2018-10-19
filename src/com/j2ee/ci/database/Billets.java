package com.j2ee.ci.database;


public class Billets {
    private int id_billet;
    private String auteur;
    private String titre;
    private String contenu;
    private String date_creation;

    public Billets(int id_billet, String auteur, String titre, String contenu, String date_creation) {
        this.id_billet = id_billet;
        this.auteur = auteur;
        this.titre = titre;
        this.contenu = contenu;
        this.date_creation = date_creation;

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

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getContenu() {
        return contenu;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public String getDate_creation() {
        return date_creation;
    }

    public void setDate_creation(String date_creation) {
        this.date_creation = date_creation;
    }
}
