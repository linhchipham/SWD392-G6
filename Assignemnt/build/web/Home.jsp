<%-- 
    Document   : Home.jsp
    Created on : Jun 28, 2021, 12:27:48 PM
    Author     : PC
--%>

<%@page import="model.semester"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Information"%>
<%@page import="model.Classinfo"%>
<%@page import="dao.informationDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%Information in = (Information) session.getAttribute("in");
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
                    <a style="border-bottom: 20px;"class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role='button' data-bs-toggle='dropdown' aria-expanded="false"><img src="<%=in.getImages()%>" width="50" height="50" alt class="rounded-circle"></a>
                              
                    <ul class="dropdown-menu" aria-labelledby='navbarDropdown'>

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
                    <img src="<%=in.getImages()%>" width="480px" height="500px">
                </div>
                <div class="col-md-5">
                     <h5 style="color: greenyellow;">${suc}</h5>
                    <h1>Information Student</h1>

                    <table style="margin-top: 15px;">
                        <tr>
                            <td style="font-weight: bold;">Student Number:</td>
                            <td><%=in.getStudentnumber()%></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Student Name:</td>
                            <td><%=in.getName()%></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Roll Number:</td>
                            <td><%=in.getRollnumber()%></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Class: </td>
                            <td><%=in.getClassname()%></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Specialized:</td>
                            <td><%=in.getSpecialized()%></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Birth Date:</td>
                            <td><%=in.getDate()%></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Email:</td>
                            <td><%=in.getEmail()%></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Phone:</td>
                            <td><%=in.getPhone()%></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Address:</td>
                            <td><%=in.getAddress()%></td>
                        </tr>
                    </table>
                    <form action="editinfor.jsp" method="post" style="margin-top: 28px;">
                        <input style="background-color: greenyellow; border-radius: 5px; width: 130px; height: 50px;" type="submit" value="Edit Information">
                    </form>
                </div>
        </main>
    </div>
    <footer>
        <div class="row">
            <h4>FPT Education</h4>  
            <p>Hoa Lac High Tech Park, Ha Noi, Viet Nam</p>

        </div>
    </footer>
   

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>  
</body>
</html>
