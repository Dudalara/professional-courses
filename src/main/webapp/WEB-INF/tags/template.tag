

<%@tag description="Template principal" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="title"%>


<html lang="pt-br">
<head>
    <title>${title}</title>
    <base href="${pageContext.request.contextPath}/">
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="favicon.png" />

    <!-- CSS -->

    <link rel="stylesheet" href="assets/resources/styles/main.css">
    <link rel="stylesheet" href="assets/resources/styles/dashboard.css">
    <link rel="stylesheet" href="assets/resources/styles/template.css">
    <link rel="stylesheet" href="assets/libraries/materialize/css/materialize.css">
</head>
<body>
<header>
    <div class="navbar-fixed" style="z-index: 999">
        <nav>
            <div class="nav-wrapper">
                <div class="container">
                    <ul id="list" class="right hide-on-med-and-down">
                        <li><a href="register">Nova inscrição</a></li>
                        <li><a href="create-user">Novo usuário</a></li>
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
<footer class="page-footer">
    <div class="footer-copyright">
        <div class="container center">
            &#169; 2023 Copyright
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="assets/libraries/jquery.mask.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
<script src="assets/resources/scripts/index.js"></script>

</body>
</html>