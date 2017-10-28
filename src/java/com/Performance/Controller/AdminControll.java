/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Performance.Controller;

import com.Performance.Connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Toshiba
 */
public class AdminControll {
   Connection con=null;
    public AdminControll() {
       con= ConnectionFactory.getConnection();
    }
    
    public ResultSet getSchema() {
        try {
            String sql = "select * from schematable";
            PreparedStatement selectPlace = con.prepareStatement(sql);
            return selectPlace.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(AdminControll.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
     public ResultSet getData() {
        try {
            String sql = "select * from datatable";
            PreparedStatement selectPlace = con.prepareStatement(sql);
            return selectPlace.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(AdminControll.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
      public ResultSet getDownload(String username,String schema) {
        try {
            String sql = "select * from downloads where username=? and schema_name=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, schema);
            return ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(AdminControll.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
