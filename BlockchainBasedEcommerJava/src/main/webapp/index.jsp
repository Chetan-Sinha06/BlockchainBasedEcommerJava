<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.buyer.connection.DbCon"%>
<%@ page import="com.buyer.model.*"%>
<%
Buyer auth = (Buyer) request.getSession().getAttribute("auth");

if (auth != null) {
	request.setAttribute("auth", auth);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>