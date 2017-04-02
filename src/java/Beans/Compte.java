/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author dalym
 */
public class Compte {
    private String login_u;
    private String email;
    private String nom;
    private String prenom;
    private String date_naissance;
    private String adresse;
    private String mdp;
    private String numtel;
    private int isAmin;
    private String civilite;

    public Compte(String login_u, String email, String nom, String prenom, String date_naissance, String adresse, String mdp, String numtel, int isAmin, String civilite) {
        this.login_u = login_u;
        this.email = email;
        this.nom = nom;
        this.prenom = prenom;
        this.date_naissance = date_naissance;
        this.adresse = adresse;
        this.mdp = mdp;
        this.numtel = numtel;
        this.isAmin = isAmin;
        this.civilite = civilite;
    }
    
    

    public void setLogin_u(String login_u) {
        this.login_u = login_u;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setCivilite(String civilite) {
        this.civilite = civilite;
    }

    public void setDate_naissance(String date_naissance) {
        this.date_naissance = date_naissance;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public void setNumtel(String numtel) {
        this.numtel = numtel;
    }

    public void setIsAmin(int isAmin) {
        this.isAmin = isAmin;
    }
    

    public String getLogin_u() {
        return login_u;
    }

    public String getEmail() {
        return email;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getCivilite() {
        return civilite;
    }

    public String getDate_naissance() {
        return date_naissance;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getMdp() {
        return mdp;
    }

    public String getNumtel() {
        return numtel;
    }

    public int getIsAmin() {
        return isAmin;
    }
    
    
    
    
}
