<%--
    Document   : template
    Created on : Apr 5, 2017, 3:02:46 PM
    Author     : Roni
--%>

<%@tag description="Template principal" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="title"%>


<html>
<head>
    <title>${title}</title>
    <base href="${pageContext.request.contextPath}/">
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="favicon.png" />

    <!-- CSS -->

    <link rel="stylesheet" href="assets/resources/styles/main.css"></link>
    <link rel="stylesheet" href="assets/resources/styles/template.css"></link>
    <link rel="stylesheet" href="assets/libraries/materialize/css/materialize.css"></link>
    <link rel="stylesheet" href="assets/libraries/font-awesome/css/font-awesome.min.css"></link>

</head>
<body>
<header>
    <div class="navbar-fixed" style="z-index: 999">
        <nav>
            <div class="nav-wrapper blue">
                <div class="container">
               <a href="#" data-activates="mobile-demo" class="button-collapse"><i
                        class="material-icons">menu</i></a>
                    <ul class="right hide-on-med-and-down">
                        <li><a href="">Início</a></li>
                        <c:if test="${not empty username}">
                            <li><a href="logout">Logout</a></li>
                        </c:if>

                    </ul>
                    <ul class="side-nav white" id="mobile-demo">
                        <div class="row">
                            <div class="col s8 offset-s2">
                                <div class="center">
                                    <img class="responsive-img utf-logo-nav"
                                         src="assets/resources/images/logo.png" />
                                </div>
                            </div>
                        </div>

                        <li><a href="">Início</a></li>
                        <c:if test="${not empty username}">
                            <li><a href="logout">Logout</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<main id="content" class="container">
    <jsp:doBody></jsp:doBody>
</main>
<!-- rodape-->
<footer class="page-footer blue darken-5">
    <div class="footer-copyright">
        <div class="container center">
            &#169; Copyright <span id="year"></span> - Todos os direitos
            reservados
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="assets/libraries/jquery.mask.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
<script src="assets/resources/scripts/index.js"></script>
</body>
</html>