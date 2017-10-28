
<%@page import="java.io.File"%>
<%@page import="com.Performance.Connection.ConnectionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    Connection con = null;
    String id = request.getParameter("id");
    int no = Integer.parseInt(id);
    String upload = " ";
    String encrypt = " ";
    String decrypt = " ";

    try {
        con = ConnectionFactory.getConnection();
        Statement st = con.createStatement();
        ResultSet rst = st.executeQuery("select uploadfile,encryptfile,decryptfile from uploads where id = " + no);
        while (rst.next()) {
            upload = rst.getString(1);
            encrypt = rst.getString(2);
            decrypt = rst.getString(3);
      

        }

        File f1 = new File(upload);
        f1.delete();
        File f2 = new File(encrypt);
        f2.delete();
        File f3 = new File(decrypt);
        f3.delete();
        con = ConnectionFactory.getConnection();
        st = con.createStatement();
        int i = st.executeUpdate("delete from uploads where id = " + no);
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