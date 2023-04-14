<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Login">
    <jsp:body>
        <div id="login-page" class="container">
            <div class="col s12 z-depth-6 card-panel">
                <form action="dashboard" method="get" class="login-form">
                    <div class="row">
                    </div>
                    <div class="row">
                        <img src="assets/resources/images/logo.png" alt="" width="100%" >
                        <div class="input-field col s12">
                            <input class="validate" id="login" type="text" name="login" required>
                            <label for="login">Login</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="password" type="password" required>
                            <label for="password">Senha</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <button class="btn col s12">Login</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </jsp:body>
</t:template>