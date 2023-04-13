<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Login">
    <jsp:body>
        <div id="login-page" class="row">
            <div class="col s12 z-depth-6 card-panel">
                <form class="login-form">
                    <div class="row">
                    </div>
                    <div class="row">
                        <img src="assets/resources/images/logo.png" alt="" width="600">
                        <div class="input-field col s12">
                            <input class="validate" id="email" type="email" name="email">
                            <label for="email" data-error="wrong" data-success="right">Email</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="password" type="password">
                            <label for="password">Password</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <a href="dashboard" class="btn">Login</a>
                            <a href="create-user" class="btn">Cadastrar</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </jsp:body>
</t:template>