<%-- 
    Document   : editinfor
    Created on : Jul 13, 2021, 11:58:33 AM
    Author     : PC
--%>

<%@page import="model.Classinfo"%>
<%@page import="model.Classinfo"%>
<%@page import="model.semester"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Information"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% Information in = (Information) session.getAttribute("in2");
            ArrayList<Classinfo> cl = (ArrayList<Classinfo>) session.getAttribute("cl");
            ArrayList<semester> se = (ArrayList<semester>) session.getAttribute("se");%>
        <link rel="stylesheet" type="text/css" href="css/edit.css">
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
                    <a style="border-bottom: 20px;"class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role='button' data-bs-toggle='dropdown' aria-expanded="false"><img src="${sessionScope.u.role.id eq 1 ? in.getImages() : "https://cdn-icons-png.flaticon.com/512/76/76828.png"}   " width="50" height="50" alt class="rounded-circle"></a>
                              
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
            <div class="card" style="width: 90%">
                <h1>Information Student</h1>

                <div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-9">

                        <form action="editinfor" method="post" >
                            <table style="margin-top: 15px;">
                                <tr>
                                    <td style="font-weight: bold;">Student Number:</td>
                                    <td><input style="background-color: grey; color: whitesmoke;"type="text" value="<%=in.getStudentnumber()%>" disabled></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold;">Student Name:</td>
                                    <td><input style="background-color: grey; color: whitesmoke;"type="text" value="<%=in.getName()%>" disabled></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold;">Roll Number:</td>
                                    <td><input style="background-color: grey; color: whitesmoke;"type="text" value="<%=in.getRollnumber()%>" disabled></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold;">Class: </td>
                                    <td><input style="background-color: grey; color: whitesmoke;"type="text" value="<%=in.getClassname()%>" disabled></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold;">Specialized:</td>
                                    <td><input style="background-color: grey; color: whitesmoke;"type="text" value="<%=in.getSpecialized()%>" disabled></td>
                                <tr>
                                    <td style="font-weight: bold;">Email:</td>
                                    <td><input style="background-color: grey; color: whitesmoke;"type="text" value="<%=in.getEmail()%>" disabled></td>
                                </tr>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold;">Birth Date:</td>
                                    <td><input type="text" value="<%=in.getDate()%>" name="dob"></td>
                                </tr>

                                <tr>
                                    <td style="font-weight: bold;">Phone:</td>
                                    <td><input type="text" value="<%=in.getPhone()%>" name="phone"></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold;">Address:</td>
                                    <td><input type="text" value="<%=in.getAddress()%>" name="address"></td>
                                </tr>
                            </table>
                    </div>
                </div> 

                <input style="background-color: greenyellow; border-radius: 5px; width: 80px; height: 50px; margin-top: 20px; margin-left: 48%;" type="submit" value="Save">
                </form>
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
