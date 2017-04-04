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
public class Claim {
    private String suivi;
    private String identite;
    private String email;
    private String numtel;
    private String objet;
    private String description;

    public Claim(String suivi,String identite, String email, String numtel, String objet, String description) {
        this.suivi=suivi;
        this.identite = identite;
        this.email = email;
        this.numtel = numtel;
        this.objet = objet;
        this.description = description;
    }

    public void setSuivi(String suivi) {
        this.suivi = suivi;
    }

    public String getSuivi() {
        return suivi;
    }

    public void setIdentite(String identite) {
        this.identite = identite;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setNumtel(String numtel) {
        this.numtel = numtel;
    }

    public void setObjet(String objet) {
        this.objet = objet;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getIdentite() {
        return identite;
    }

    public String getEmail() {
        return email;
    }

    public String getNumtel() {
        return numtel;
    }

    public String getObjet() {
        return objet;
    }

    public String getDescription() {
        return description;
    }

    
}
