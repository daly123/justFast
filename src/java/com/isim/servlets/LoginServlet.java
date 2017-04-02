/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.isim.servlets;

import com.isim.datasource.ConnexionClass;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dalym
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/JSPs/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.print("USERNAME : " + req.getParameter("username"));
        System.out.print("USERNAME : " + req.getParameter("password"));
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        try {
            Connection cnx = ConnexionClass.Connect();
            String loginReq = "SELECT * FROM `compte` WHERE `login_u`= '" + username + "' and mdp= '" + password + "'";
            Statement loginStatement = cnx.createStatement();
            ResultSet loginResultSet = loginStatement.executeQuery(loginReq);
            int rowCount = 0;
            while (loginResultSet.next()) {
                rowCount++;
                if (loginResultSet.getInt("isAmin") == 1) {
                    HttpSession session = req.getSession();
                    session.setAttribute("username", username);
                    req.getRequestDispatcher("/JSPs/admin.jsp").forward(req, resp);
                }
            }
            if (rowCount > 0) {
                
                HttpSession session = req.getSession();
                session.setAttribute("username", username);
                resp.sendRedirect("/JustFast/home");

            } else {
                req.setAttribute("error", "Error :Invalid Username or Password");
                req.getRequestDispatcher("/JSPs/login.jsp").forward(req, resp);
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
