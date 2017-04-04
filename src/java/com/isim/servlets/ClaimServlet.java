/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.isim.servlets;

import Beans.Claim;
import java.io.IOException;
import java.io.PrintWriter;
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
public class ClaimServlet extends HttpServlet {

   

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/JSPs/claim.jsp").forward(request, response);
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Claim c=new Claim(request.getParameter("suivi"),request.getParameter("identite"), request.getParameter("email"), request.getParameter("numtel"), request.getParameter("objet"), request.getParameter("description"));
         Connection cnx;  
        try {
            cnx = com.isim.datasource.ConnexionClass.Connect();
             Statement st=cnx.createStatement();
             String  req="insert into claim(num_suivi,identite,email,numtel,objet,description) values('"+c.getSuivi()+"','"+c.getIdentite()+"','"+c.getEmail()+"','"+c.getNumtel()+"','"+c.getObjet()+"','"+c.getDescription()+"')";
             int nb=st.executeUpdate(req);
             System.out.println("ahhaha");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ClaimServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
           
        
    }
    
}
