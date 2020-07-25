/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.chapter38;

import java.sql.*;

/**
 *
 * @author pdr04
 */
public class DBBean {

    private Connection connection = null;
    private String username;
    private String password;
    private String driver;
    private String url;

    public void initializeJdbc() {
        try {
            if (url.contains("mysql"))
                driver = "com.mysql.cj.jdbc.Driver";
            
            System.out.println("Driver is " + driver);
            Class.forName(driver);

            connection = DriverManager.getConnection(url, username, password);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public String[] getTables() {
        String[] tables = null;

        try {
            DatabaseMetaData dbMetaData = connection.getMetaData();
            ResultSet rsTables = dbMetaData.getTables(null, null, null, new String[]{"TABLE"});

            int size = 0;

            while (rsTables.next()) {
                size++;
            }

            rsTables = dbMetaData.getTables(null, null, null, new String[]{"TABLE"});

            tables = new String[size];
            int i = 0;
            while (rsTables.next()) {
                tables[i++] = rsTables.getString("TABLE_NAME");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return tables;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setUsername(String newUsername) {
        username = newUsername;
    }

    public String getUsername() {
        return username;
    }

    public void setPassword(String newPassword) {
        password = newPassword;
    }

    public String getPassword() {
        return password;
    }

    public void setDriver(String newDriver) {
        driver = newDriver;
    }

    public String getDriver() {
        return driver;
    }

    public void setUrl(String newUrl) {
        url = newUrl;
    }

    public String getUrl() {
        return url;
    }

}
