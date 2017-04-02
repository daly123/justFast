/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.isim.datasource;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author dalym
 */
public class ConnexionClass {

    private static final String URL = "jdbc:mysql://localhost:3306/justfast";
    private static final String DATABASE_USER = "hamdi";
    private static final String DATABASE_PASS = "hamdi";
    

    public static Connection Connect() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection cnx = (Connection) DriverManager.getConnection(URL, DATABASE_USER, DATABASE_PASS);
        return cnx;
    }
    
}
