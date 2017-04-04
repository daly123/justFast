/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.isim.servlets;

import com.isim.datasource.ConnexionClass;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dalym
 */
@WebServlet(name = "Auto_login", urlPatterns = {"/Auto_login"})
public class Auto_login extends HttpServlet {

    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = (String) request.getAttribute("user");
        String password = (String) request.getAttribute("password");
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


