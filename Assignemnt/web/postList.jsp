<%-- 
    Document   : postList
    Created on : Jul 16, 2022, 10:45:05 PM
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
        <table>
            <a href="postDetail">Add</a>
            <tr>
                <td>Title</td>
                <td>Date</td>
                <td>Author</td>
                <td></td>
            </tr>
            <c:forEach items="${requestScope.posts}" var="p">
                <tr>
                    <td>${p.title}</a></td>
                        <td>${p.date}</td>
                        <td>${p.author}</td>
                        <td><a href="postDetail?id=${p.id}">detail</a></td>
                        <td><a href="#" onclick="checkOut(${p.id})">delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
    <script>
                function checkOut(id){
                    var result = confirm("Are you sure?");
                    if(result){
                        window.location = "deletePost?id="+id;
                    }
                }
    </script>
</html>
