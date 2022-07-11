<%-- 
    Document   : mark
    Created on : Jul 2, 2021, 4:58:01 PM
    Author     : PC
--%>

<%@page import="model.Classinfo"%>
<%@page import="model.Information"%>
<%@page import="model.mark"%>
<%@page import="model.semester"%>
<%@page import="model.subject"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%ArrayList<subject> subject = (ArrayList<subject>) session.getAttribute("subject");
            ArrayList<semester> se = (ArrayList<semester>) session.getAttribute("se");
            mark m = (mark) request.getAttribute("m");
            Information in = (Information) session.getAttribute("in");
            ArrayList<Classinfo> cl = (ArrayList<Classinfo>) session.getAttribute("cl");
            String semesid = (String) session.getAttribute("semesid");
            String subid = (String) session.getAttribute("subid");

        %>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
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
                    <a style="border-bottom: 20px;"class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role='button' data-bs-toggle='dropdown' aria-expanded="false"><img src="<%=in.getImages()%>" width="50" height="50" alt class="rounded-circle"></a>
                              
                    <ul class="dropdown-menu" aria-labelledby='navbarDropdown'>

                        <li>  <a href="home" class="dropdown-item" > Log out</a></li>


                    </ul>
                </li> 
            </ul>
        </nav>
    </header>
    <body>
        <main>
            <div id="myDIV">
                <table>
                    <tr>
                        <td valign="top" >
                            <table >
                                <tr >
                                    <td style="background-color:#fc9e34; border: 1px solid black;">Semester</td>
                                    <td style="background-color:#fc9e34; border: 1px solid black;">Course</td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <table>
                                            <%for (semester s : se) {%>
                                            <tr> <td ><a href="Mark?semesid=<%=s.getSemesterid()%>"><%if (s.getSemesterid() == Integer.parseInt(semesid)) {%><button class="btn" style="background-color: orange;"><%=s.getSemesternmae()%></button> <%} else {%><button class="btn"> <%=s.getSemesternmae()%></button><%}%> </a> </td></tr>
                                            <%}%>
                                        </table>
                                    </td>

                                    <td valign="top">
                                        <table>
                                            <%for (subject s : subject) {%>
                                            <tr><td><a href="Mark?semesid=<%=s.getSemesid()%>&subid=<%=s.getSubjectid()%>">
                                                        <%if (subid == null) {%><button class="btn"><%=s.getSubjectname()%></button><%} else {
                                                            if (s.getSubjectid() == Integer.parseInt(subid)) {%>
                                                        <button class="btn" style="background-color: orange;"><%=s.getSubjectname()%></button> <%} else {%><button class="btn"> <%=s.getSubjectname()%></button><%}%> 


                                                        <%}%>
                                                    </a> </td></tr>
                                                    <%}%>
                                            <tr><td></td><tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <%if (m != null) {%>
                        <td valign="top">
                            <table >
                                <tr style="background-color: #fc9e34; ">
                                    <td style=" border: 1px solid black;">GRADE CATEGORY</td>
                                    <td style=" border: 1px solid black;">GRADE ITEM</td>
                                    <td style=" border: 1px solid black;">WEIGHT</td>
                                    <td style=" border: 1px solid black;">VALUE</td>
                                </tr>
                                <tr style=" border: 1px solid black;">
                                    <td style=" border: 1px solid black;">Assignment</td>
                                    <td style=" border: 1px solid black;"><table><tr><td>Assignment 1</td></tr><tr><td>Assignment 2</td></tr><tr><td>Total</td></tr></table></td>
                                    <td style=" border: 1px solid black;"><table><tr><td>15.0%</td></tr><tr><td>15.0%</td></tr><tr><td>30.0%</td></tr></table></td>
                                    <td style=" border: 1px solid black;"><table><tr><td><%=m.getAss1()%></td></tr><tr><td><%=m.getAss2()%></td></tr><tr><td><%=m.getTotal1()%></td></tr></table></td>
                                </tr>
                                <tr style=" border: 1px solid black;">
                                    <td style=" border: 1px solid black;">Progress Test</td>
                                    <td style=" border: 1px solid black;"><table><tr><td>Progress Test 1</td></tr><tr><td>Progress Test 2</td></tr><tr><td>Total</td></tr></table></td>
                                    <td style=" border: 1px solid black;"><table><tr><td>15.0%</td></tr><tr><td>15.0%</td></tr><tr><td>30.0%</td></tr></table></td>
                                    <td style=" border: 1px solid black;"><table><tr><td><%=m.getPro1()%></td></tr><tr><td><%=m.getPro2()%></td></tr><tr><td><%=m.getTotal2()%></td></tr></table></td>
                                </tr >
                                <tr style=" border: 1px solid black;">
                                    <td style=" border: 1px solid black;"> Final Exam</td>
                                    <td style=" border: 1px solid black;">Final Exam</td>
                                    <td style=" border: 1px solid black;">40%%</td>
                                    <td style=" border: 1px solid black;"><%=m.getFin()%></td>
                                </tr>

                                <tr style=" border: 1px solid black;">
                                    <td style=" border: 1px solid black;"><h6>COURSE TOTAL</h6></td>
                                    <td style=" border: 1px solid black;"> <table><tr><td ><h6>AVERAGE</h6></td></tr><tr><td><h6>STATUS</h6></td></tr></table></td>
                                    <td style=" border: 1px solid black;"><table><tr><td><h6><%=m.getTotal()%></h6></td></tr><tr><td><%if (m.getTotal() > 5.0) {%><h6 style="color: green;">PASS</h6><%} else {%><h6 style="color: red;">NOT PASS</h6><%}%></td></tr></table></td>

                                </tr>


                            </table>
                        </td>
                        <%}%>
                    </tr>
                </table>
            </div>
        </main>
        <footer>
            <div class="row">
                <h4>FPT Education</h4>  
                <p>Hoa Lac High Tech Park, Ha Noi, Viet Nam</p>

            </div>
        </footer>
        <style>
            header{
                background: orange;
                margin-bottom: 20px;

            }
            header a{
                text-decoration: none;
                color: black;

            }
            header img{
                margin-left:30px ;
            }
            header .nav-link{
                margin-left: 60px;
                margin-top: 15px;
                font-size: 120%;
            }
            footer{
                text-align: center;
                background: orange;
                margin-top: 4%;
            }

            a{
                text-decoration: none;
            }
            main table tr td{
                width: 600px;
            }
            main {
                margin-left: 40px;
            }
            .btn {
                border: none;
                outline: none;
                padding: 10px 16px;
                background-color: #f1f1f1;
                cursor: pointer;
            }

            /* Style the active class (and buttons on mouse-over) */
            .active, .btn:hover {
                background-color: #666;
                color: white;
            }


        </style>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>  

    </body>
</html>
