<%@page import="com.Performance.Connection.ConnectionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    Connection con=null;
    String id = request.getParameter("id");
    int no = Integer.parseInt(id);

    try {
        
        con = ConnectionFactory.getConnection();
        Statement st = con.createStatement();
        int i=st.executeUpdate("delete from uploads where id = "+ no);
         if (i > 0) {
           out.println("<html>"
                    + "<head>"
                    + "<title>"
                    + "Alert Message"
                    + "</title>");
            out.print("<script language='JavaScript'>alert('Your Record Deleted.');</script>");
            out.println("<script> location.replace('UserUploadDetail.jsp');</script>"
                    + "</head>");
            out.println("</html>");

        } else {
            out.println("<html>"
                    + "<head>"
                    + "<title>"
                    + "Alert Message"
                   + "</title>");
            out.print("<script language='JavaScript'>alert('Your Record Not Deleted.');</script>");
            out.println("<script> location.replace('UserUploadDetail.jsp');</script>"
                    + "</head>");
            out.println("</html>");
        }
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>