<%-- 
    Document   : member
    Created on : Jun 30, 2021, 1:53:17 PM
    Author     : PC
--%>

<%@page import="model.semester"%>
<%@page import="model.Classinfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Information"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%Information in = (Information) session.getAttribute("in2");
            Information in2 = (Information) session.getAttribute("in");
            ArrayList<Classinfo> cl = (ArrayList<Classinfo>) session.getAttribute("cl");
            ArrayList<semester> se = (ArrayList<semester>) session.getAttribute("se");
        %>
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light ">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <img src="./images/fpt/fpt.png">
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Home.jsp">Home</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role='button' data-bs-toggle='dropdown' aria-expanded="false">Class Information</a>
                        <ul class="dropdown-menu" aria-labelledby='navbarDropdown'>
                            <li><a class="dropdown-item" href="Classinfo?classname=<%=in.getClassname()%>">Your Class</a></li>
                                <%for (Classinfo cls : cl) {%>
                            <li><a class="dropdown-item" href="Classinfo?classname=<%=cls.getClassname()%>"><%=cls.getClassname()%></a></li>
                                <%}%>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role='button' data-bs-toggle='dropdown' aria-expanded="false">Mark Report</a>

                        <ul class="dropdown-menu" aria-labelledby='navbarDropdown'>
                            <%for (semester s : se) {%>
                            <li>  <a href="Mark?semesid=<%=s.getSemesterid()%>" class="dropdown-item" > <%=s.getSemesternmae()%> </a></li>
                                <% }
                                %>

                        </ul>
                    </li>
                    <li style="margin-left: 55%; margin-bottom: 3px;"class="nav-item dropdown">
                        <a style="border-bottom: 20px;"class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role='button' data-bs-toggle='dropdown' aria-expanded="false"><img "${sessionScope.u.role.id eq 1 ? in.getImages() : "https://cdn-icons-png.flaticon.com/512/76/76828.png"}   " width="50" height="50" alt class="rounded-circle"></a>

                        <ul class="dropdown-menu" aria-labelledby='navbarDropdown'>
                            <c:if test="${sessionScope.u.role.id eq 1}">

                                <li>  <a href="memberinclass?n=${sessionScope.u.user}" class="dropdown-item" > My information</a></li>
                                </c:if>
                            <li>  <a href="home" class="dropdown-item" > Log out</a></li>


                        </ul>
                    </li> 
                </ul>
            </nav>
        </header>
        <main>
            <div class="row main">
                <div class="col-md-1"></div>
                <div class="col-md-6">
                    <img src="${sessionScope.u.role.id eq 1 ? in.getImages() : "https://cdn-icons-png.flaticon.com/512/76/76828.png"}   " width="480px" height="500px">
                </div>
                <div class="col-md-5">
                    <h1>Information Student</h1>


                    <table>
                        <tr>
                            <td>Student Number:</td>
                            <td><%=in.getStudentnumber()%></td>
                        </tr>
                        <tr>
                            <td>Student Name:</td>
                            <td><%=in.getName()%></td>
                        </tr>
                        <tr>
                            <td>Roll Number:</td>
                            <td><%=in.getRollnumber()%></td>
                        </tr>
                        <tr>
                            <td>Class: </td>
                            <td><%=in.getClassname()%></td>
                        </tr>
                        <tr>
                            <td>Specialized:</td>
                            <td><%=in.getSpecialized()%></td>
                        </tr>
                        <tr>
                            <td>Birth Date:</td>
                            <td><%=in.getDate()%></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><%=in.getEmail()%></td>
                        </tr>
                        <tr>
                            <td>Phone:</td>
                            <td><%=in.getPhone()%></td>
                        </tr>
                        <tr>
                            <td>Address:</td>
                            <td><%=in.getAddress()%></td>
                        </tr>
                    </table>

                    <c:if test="${sessionScope.u.role.id == 3}">
                        <form action="editinfor.jsp" method="get" style="margin-top: 28px;">
                            <input style="background-color: greenyellow; border-radius: 5px; width: 130px; height: 50px;" type="submit" value="Edit infomation">
                        </form>
                    </c:if>
                </div>
        </main>

        <footer>
            <div class="row">
                <h4>FPT Education</h4>  
                <p>Hoa Lac High Tech Park, Ha Noi, Viet Nam</p>

            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>  
    </body>
</html>