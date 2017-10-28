/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Performance.Controller;

import com.Performance.Connection.ConnectionFactory;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.OutputStream;

import java.sql.Connection;
import javax.servlet.ServletException;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.jdbc.JDBCCategoryDataset;

/**
 *
 * @author Toshiba
 */
public class AdminBarchart extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        genGraph(req, resp);


    }

    public void genGraph(HttpServletRequest req, HttpServletResponse resp) {
        Connection con = ConnectionFactory.getConnection();
        JDBCCategoryDataset dataSet = new JDBCCategoryDataset(con);
        JDBCCategoryDataset dataSet1 = new JDBCCategoryDataset(con);
        JDBCCategoryDataset dataSet2 = new JDBCCategoryDataset(con);
        try {
            javax.servlet.http.HttpSession session = req.getSession();
            //    String username=(String)session.getAttribute("username");

            String performtype = "pricing";
            dataSet.executeQuery("select * from evaluation where performtype='" + performtype + "'");
            JFreeChart chart = ChartFactory.createBarChart3D(
                    "Pricing Wise", "Schema", "Pricing in $",
                    dataSet, PlotOrientation.HORIZONTAL, true, true, true);
            chart.setBorderVisible(true);
            chart.setTitle("Online Book Shopping\nPricing Wise");
          
            if (chart != null) {
                int width = 1000;
                int height = 400;
                resp.setContentType("image/jpeg");
                OutputStream out = resp.getOutputStream();
                ChartUtilities.writeChartAsJPEG(out, chart, width, height);
            }

        } catch (Exception e) {
            System.err.println("Problem occurred creating chart." + e.getMessage());
        }
    }
}
