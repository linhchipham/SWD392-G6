<%-- 
    Document   : Login
    Created on : Jun 28, 2021, 11:55:11 AM
    Author     : PC
--%>

<%@page import="controller.login"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
       
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%
            Cookie[] cs = request.getCookies();
            Cookie user = login.GetCookieByName(cs, "email");
            Cookie pass = login.GetCookieByName(cs, "pass");
            if (user != null) {
                response.sendRedirect("Home.jsp");
            }
        %>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-light">
                
                <img src="./images/fpt/fpt.png">

            </nav>
        </header>

        <main>
            <h5 style="color: red">${error}</h5>
            <div class="row img1">
                <div class="col-md-3">
                    <div class="card" style="width: 25rem; border-color: black; margin-left: 25px;">
                        <div class="mb-3">
                            <h3>LOGIN HERE</h3>
                            <svg xmlns="http://www.w3.org/2000/svg" width="150px" height="150px" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                            </svg>
                        </div>
                        <div class="card-body">
                            <form action="login" method='post'>
                                <div class="mb-2"> 
                                    <label>Email: </label>
                                    <input type="text" name="email" class="form-control" placeholder="Username">
                                </div>
                                <div class="mb-2"> 
                                    <label>Password:</label>
                                    <input type="text" name='pass' class="form-control" placeholder="Password">
                                </div>
                                <div class="mb-2"> 
                                    <input type="checkbox" name='check' class="form-check-label">Remember me
                                </div>
                                <div class="mb-2"> 
                                    <input type="submit" value="Login" class="btn btn-primary">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-9">
                    <img src="./images/fpt/FPT2.png" width="1040px" height="480px">
                </div>
            </div>
        </main>

        <footer>
            <div class="row">
                <h4>FPT Education</h4>  
                <p>Hoa Lac High Tech Park, Ha Noi, Viet Nam</p>

            </div>
        </footer>

    </body>
</html>
