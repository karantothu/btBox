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
public class BarChartUsage extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        genGraph(req, resp);

    }

    public void genGraph(HttpServletRequest req, HttpServletResponse resp) {
        Connection con = ConnectionFactory.getConnection();
        JDBCCategoryDataset dataSet = new JDBCCategoryDataset(con);
        try {
            javax.servlet.http.HttpSession session = req.getSession();
            String username = (String) session.getAttribute("username");
            String performtype = "usage";
            dataSet.executeQuery("select * from evaluation where username='" + username + "' and performtype='" + performtype + "'");

            JFreeChart chart = ChartFactory.createBarChart3D(
                    "Usage Wise", "Schema", "Usage In KB",
                    dataSet, PlotOrientation.VERTICAL, true, true, true);
            chart.setBorderVisible(true);
            if (chart != null) {
                int width = 600;
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
