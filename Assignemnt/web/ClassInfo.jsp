<%-- 
    Document   : ClassInfo
    Created on : Jun 30, 2021, 1:22:56 PM
    Author     : PC
--%>

<%@page import="model.semester"%>
<%@page import="model.Classinfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Information"%>
<%@page import="model.Information"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%  ArrayList<Information> in = (ArrayList<Information>) session.getAttribute("in3");
            String classname = (String) session.getAttribute("classname");
            Information ins = (Information) session.getAttribute("in");
            ArrayList<Classinfo> cl = (ArrayList<Classinfo>) session.getAttribute("cl");
            ArrayList<semester> se = (ArrayList<semester>) session.getAttribute("se");
        %>
        <link rel="stylesheet" type="text/css" href="css/classinfo.css">
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
                            <c:if test="${sessionScope.u.role.id eq 1}">
                                <li><a class="dropdown-item" href="Classinfo?classname=<%=ins.getClassname()%>">Your Class</a></li>
                                </c:if>
                                <%for (Classinfo cls : cl) {%>
                            <li><a class="dropdown-item" href="Classinfo?classname=<%=cls.getClassname()%>"><%=cls.getClassname()%></a></li>
                                <%}%>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role='button' data-bs-toggle='dropdown' aria-expanded="false">Mark Report</a>
                        <!--            <a href="Mark">Mark Report
                                        <p>Mark report</p>-->
                        <ul class="dropdown-menu" aria-labelledby='navbarDropdown'>
                            <%for (semester s : se) {%>
                            <li>  <a href="Mark?semesid=<%=s.getSemesterid()%>" class="dropdown-item" > <%=s.getSemesternmae()%> </a></li>
                                <% }
                                %>

                        </ul>
                    </li>
                    <li style="margin-left: 55%; margin-bottom: 3px;"class="nav-item dropdown">
                        <a style="border-bottom: 20px;"class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role='button' data-bs-toggle='dropdown' aria-expanded="false"><img src="" width="50" height="50" alt class="rounded-circle"></a>

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
            <h1>List student in Class: <%=classname%></h1>
            <%if (!in.isEmpty()) {%>
            <table>
                <tr>
                    <td>Number</td>
                    <td>Student Number</td>
                    <td>Image</td>
                    <td>Student Name</td>
                    <td>Roll Number</td>
                </tr>

                <%  for (Information inf : in) {%>
                <tr>
                    <td valign="top" style="width: 10%;"><%=inf.getCount()%></td>
                    <td valign="top" style="width: 10%;"><a href="memberinclass?n=<%=inf.getEmail()%>"><%=inf.getStudentnumber()%></a></td>
                    <td style="width: 30%; text-align: center;  "><img src="<%=inf.getImages()%>" width="150px" height="200px"></td>
                    <td valign="top" style="width: 30%;"><%=inf.getName()%></td>
                    <td valign="top"><%=inf.getRollnumber()%></td>
                </tr>
                <%}%>
            </table>
            <%} else {%>
            <h4>The List is emty</h4>
            <%}%>
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
