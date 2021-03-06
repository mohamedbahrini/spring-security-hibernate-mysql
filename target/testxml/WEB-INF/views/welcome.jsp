<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: spike-x2
  Date: 29/05/17
  Time: 01:15 م
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Sticky Footer Navbar Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet">

    <style>
        /* Sticky footer styles
-------------------------------------------------- */
        html {
            position: relative;
            min-height: 100%;
        }

        body {
            /* Margin bottom by footer height */
            margin-bottom: 60px;
        }

        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            /* Set the fixed height of the footer here */
            height: 60px;
            line-height: 60px; /* Vertically center the text there */
            background-color: #f5f5f5;
        }

        /* Custom page CSS
        -------------------------------------------------- */
        /* Not required for template or sticky footer method. */

        body > .container {
            padding: 60px 15px 0;
        }

        .footer > .container {
            padding-right: 15px;
            padding-left: 15px;
        }

        code {
            font-size: 80%;
        }
    </style>
</head>
<body>

<!-- Fixed navbar -->
<nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">Fixed navbar</a>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Disabled</a>
            </li>
        </ul>
        <div style="color: white;">welcome ${pageContext.request.userPrincipal.name} &nbsp;&nbsp;</div>

        <form action="<%=request.getContextPath()%>/appLogout" method="POST">
            <input class="btn btn-xs" type="submit" value="Logout" style="border:none;
  outline:none;
  background:none;
  cursor:pointer;
  color:#9999FF;
  padding:0;
  text-decoration:underline;
  font-family:inherit;
  font-size:inherit;"/><span
                class="fa fa-power-off "></span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </div>
</nav>

<!-- Begin page content -->
<div class="container">
    <div class="mt-3">
        <h1>Sticky footer with fixed navbar</h1>
    </div>
    <p class="lead">Pin a fixed-height footer to the bottom of the viewport in desktop browsers with this custom HTML
        and CSS. A fixed navbar has been added with <code>padding-top: 60px;</code> on the <code>body &gt;
            .container</code>.</p>
    <p>Back to <a href="../sticky-footer">the default sticky footer</a> minus the navbar.</p>
    <div class="row">
        <div class="col-md-6">
            nom
        </div>
        <div class="col-md-6">
            password
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <span class="text-muted">Place sticky footer content here.</span>
    </div>
</footer>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
        integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
        crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
        integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
        crossorigin="anonymous"></script>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>

