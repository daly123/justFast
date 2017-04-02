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
public class Livreur {
 private String login_l;
    private String mdp;
    private double latitude;
    private double longitude;
    
    public void setLogin_l(String login_l) {
        this.login_l = login_l;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getLogin_l() {
        return login_l;
    }

    public String getMdp() {
        return mdp;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }
   
    
}
