<%-- 
    Document   : index
    Created on : Feb 24, 2022, 3:45:58 PM
    Author     : giaki
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.product.Group"%>
<%@page import="dal.product.GroupDBContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <%
            GroupDBContext groupDB = new GroupDBContext();
            ArrayList<Group> groups = groupDB.list();
            request.setAttribute("groups", groups);
        %>
    </head>
    <body>
        <jsp:include page="/views/base/header.jsp" />
        <jsp:include page="/views/base/footerImport.jsp" />
    </body>
</html>
