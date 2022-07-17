<%-- 
    Document   : postDetail
    Created on : Jul 16, 2022, 11:09:15 PM
    Author     : LOVE
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${requestScope.post != null}">
            <form action="postDetail" method="POST">
            <input type="text" name="id" value="${requestScope.post.id}" hidden=""> 
        Title:<input type="text" name="title" value="${requestScope.post.title}"><br/>
        Detail:<textarea name="detail" style="width: 300px; height: 100px" >${requestScope.post.detail}</textarea><br/>
        Author:<input type="text" name="author" value="${requestScope.post.author}"><br/>
        Date created:${requestScope.post.date}<input type="text" name="date" value="${requestScope.post.date}" hidden="">
        <input type="submit" value="Edit">
       </form>
        </c:if>
        <c:if test="${requestScope.post eq null}">
            <form action="postDetail" method="POST">
        Title:<input type="text" name="title" ><br/>
        Detail:<textarea name="detail" style="width: 300px; height: 100px" ></textarea><br/>
        <input type="submit" value="Add">
       </form>
        </c:if>
    </body>
</html>
