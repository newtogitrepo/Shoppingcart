<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<%@ page import ="java.util.Properties" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CICD - Continuous Everything</title>
</head>
<body>

<%

Properties prop = new Properties();
InputStream input = null;
prop.load(getServletContext().getResourceAsStream("/WEB-INF/properties/config.properties"));

Class.forName(prop.getProperty("driver"));
String connection_string=prop.getProperty("CONNECTION_URL")+prop.getProperty("database");
Connection con=DriverManager.getConnection(connection_string, prop.getProperty("dbuser"), prop.getProperty("dbpassword"));
Statement statement = con.createStatement() ;

//con.close();
%>

</body>
</html>