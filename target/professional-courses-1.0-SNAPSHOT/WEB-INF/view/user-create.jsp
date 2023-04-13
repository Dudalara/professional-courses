<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Novo usuário">
  <jsp:body>

    <form action="create-user" method="post">
      <div class="row">
        <div class="input-field col s12">
          <input id="login" type="text" name="login">
          <label for="login">Login</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="name" type="text" name="name">
          <label for="name">Nome: </label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" name="password">
          <label for="password">Senha</label>
        </div>
      </div>
      <div class="row buttons">
        <div class="col s6 left-align">
          <a href="dashboard" class="btn">Voltar</a>
        </div>
        <div class="col s6 right-align">
          <button class="btn">Criar</button>
        </div>
      </div>

    </form>
  </jsp:body>
</t:template>