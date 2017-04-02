/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.isim.servlets;

import Beans.Compte;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dalym
 */
public class RegisterServlet extends HttpServlet {

   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/JSPs/register.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         Compte c=new Compte(request.getParameter("login_u"), request.getParameter("email"), request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("date_naissance"), request.getParameter("ville"), request.getParameter("mdp"), request.getParameter("phone"), 0,request.getParameter("civilite") );
        try {
            Connection cnx=com.isim.datasource.ConnexionClass.Connect();
            Statement st=cnx.createStatement();
            System.out.println(c.getLogin_u());
            String  req="insert into compte(login_u,email,nom,prenom,civilite,date_naissance,adresse,mdp,numtel,isAmin) values('"+c.getLogin_u()+"','"+c.getEmail()+"','"+c.getNom()+"','"+c.getPrenom()+"','"+c.getCivilite()+"','"+c.getDate_naissance()+"','"+c.getAdresse()+"','"+c.getMdp()+"',"+c.getNumtel()+",0)";
            int nb=st.executeUpdate(req);
            
            
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
         
    }
}
