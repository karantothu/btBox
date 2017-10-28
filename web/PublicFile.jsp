<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.Performance.Connection.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>"btBox" Online File Storage
</title>
        <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
        <link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
        <script language="javascript" type="text/javascript">
            function clearText(field)
            {
                if (field.defaultValue == field.value) field.value = '';
                else if (field.value == '') field.value = field.defaultValue;
            }
        </script>

        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/ddsmoothmenu.js">
        </script>
        <script type="text/javascript">

            ddsmoothmenu.init({
                mainmenuid: "templatemo_menu", //menu DIV id
                orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
                classname: 'ddsmoothmenu', //class added to menu's outer DIV
                //customtheme: ["#1c5a80", "#18374a"],
                contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
            })

        </script>

        <script type="text/javascript" src="js/jquery-1-4-2.min.js"></script> 
        <link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
        <script type="text/JavaScript" src="js/slimbox2.js"></script> 
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="css/bootstrap-responsive.css" />
        <script type="text/javascript" src="js/bootstrapValidator.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
    
        <script lang="javascript">
            function Back_onclick() 
            {
                window.location.href = "HomePage.jsp";
            }
  
        </script>
        <script lang="javascript">
    
            function download(id)
            {
                var fds=document.form;
                fds.method="post";
                fds.action='Public.jsp?id='+id;
                fds.submit();
    
            }
 
        </script>
    </head>
    <body>

       <div id="templatemo_body_wrapper">
            <div id="templatemo_wrapper"><span id="templatemo_wrapper_top"></span>
                <div id="templatemo_header">    
                    <div id="site_title">"btBox" Online File Storage
</div>
                    <div id="templatemo_menu" class="ddsmoothmenu">
                        <ul>
                            <li><a href="HomePage.jsp" class="selected">Home</a></li>
                            <li><a href="UserRegister.jsp">Cloud Create</a></li>
                            <li><a href="">Cost</a></li>
                            <li><a href="">Searching</a></li>
                            <li><a href="UserLogin.jsp">Login</a></li>
                        </ul>
                        <br style="clear: left" />
                    </div> <!-- end of templatemo_menu -->
                    <a href="#" title="Télécharger la photo" rel="nofollow" class="templatemo_header_img" target="_blank">Back to Homepage</a>
                </div>
                <div id="templatemo_slider">
                    <div id="slider-wrapper">
                        <div id="slider" class="nivoSlider">
                            <img src="images/slider/01.jpg" alt="Slider 01"  />
                            <a href="#"><img src="images/slider/02.jpg" alt="Slider 02" /></a>
                            <img src="images/slider/03.jpg" alt="Slider 03"  />
                            <img src="images/slider/04.jpg" alt="Slider 04"  />
                            <img src="images/slider/05.jpg" alt="Slider 05"  />
                        </div>
                        <div id="htmlcaption" class="nivo-html-caption">

                        </div>
                    </div>
                    <script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
                    <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
                    <script type="text/javascript">
                        $(window).load(function() {
                            $('#slider').nivoSlider();
                        });
                    </script>
                </div>
                <div id="templatemo_main">
                <form name="form">
                    <br>
                    <br>
                    <br>

                    <%


                        Connection con = null;
                        //String username = session.getAttribute("username").toString();
                        try {
                            con = ConnectionFactory.getConnection();
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("select * from request");


                    %>
                    <table class="table table-bordered" id="example">

                        <tr align="justfy">

                            <th>Name</th>
                            <th>Files</th>
                            <th>Download Key</th>
                            <th>Download</th>


                        </tr>

                        <%
                            while (rs.next()) {

                        %>

                        <tr class="success">

                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td> 
                            <td><%=rs.getString(7)%></td>

                       <td><button type="button" name="Download" class="btn btn-default" value="Download" onclick="download(<%=rs.getInt(1)%>);"/>Download</td>   
                        </tr>  

                        <%
                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>


                    </table>
                    <br>
                    <br>
                    <br>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-md-15">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <button type="button" class="btn btn-default" style="height: 40px;width: 150px" onclick="Back_onclick()">Back</button>
                        </div>
                    </div>
 </form>


                    <div class="cleaner"></div>
                </div>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
            </div>
        </div>


        <script type='text/javascript' src='js/logging.js'></script>
    </body>
</html>