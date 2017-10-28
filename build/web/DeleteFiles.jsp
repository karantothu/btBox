
<%@page import="com.Performance.Connection.ConnectionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<%

String id=request.getParameter("id");
int no=Integer.parseInt(id);

try {
Connection connection = ConnectionFactory.getConnection();
Statement st = connection.createStatement();
st.executeUpdate("DELETE FROM user WHERE id = '"+no+"'");

response.sendRedirect("UserView.jsp");
}
catch(Exception e){}
%>