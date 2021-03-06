/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.isim.servlets;

import Beans.Compte;
import com.isim.datasource.ConnexionClass;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
         Compte c=new Compte(request.getParameter("username"), request.getParameter("email"), request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("date_naissance"), request.getParameter("ville"), request.getParameter("password"), request.getParameter("phone"), 0,request.getParameter("civilite") );
        try {
            Connection cnx=com.isim.datasource.ConnexionClass.Connect();
            Statement st=cnx.createStatement();
            System.out.println(c.getLogin_u());
            String  req="insert into compte(login_u,email,nom,prenom,civilite,date_naissance,adresse,mdp,numtel,isAmin) values('"+c.getLogin_u()+"','"+c.getEmail()+"','"+c.getNom()+"','"+c.getPrenom()+"','"+c.getCivilite()+"','"+c.getDate_naissance()+"','"+c.getAdresse()+"','"+c.getMdp()+"',"+c.getNumtel()+",0)";
            int nb=st.executeUpdate(req);
                   
            
            
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.print("USERNAME : " + request.getParameter("username"));
        System.out.print("USERNAME : " + request.getParameter("password"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        try {
            Connection cnx = ConnexionClass.Connect();
            String loginReq = "SELECT * FROM `compte` WHERE `login_u`= '" + username + "' and mdp= '" + password + "'";
            Statement loginStatement = cnx.createStatement();
            ResultSet loginResultSet = loginStatement.executeQuery(loginReq);
            int rowCount = 0;
            while (loginResultSet.next()) {
                rowCount++;
                if (loginResultSet.getInt("isAmin") == 1) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    request.getRequestDispatcher("/JSPs/admin.jsp").forward(request, response);
                }
            }
            if (rowCount > 0) {
                
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("/JustFast/home");

            } else {
                request.setAttribute("error", "Error :Invalid Username or Password");
                request.getRequestDispatcher("/JSPs/login.jsp").forward(request, response);
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        
        
        
         
    }
}
