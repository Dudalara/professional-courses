<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Teste">
  <jsp:body>

    <form action="create-user" method="post">
      Login: <input type="text" name="login">
      Nome: <input type="text" name="name">
      Password: <input type="text" name="password">
      <button>Criar</button>
    </form>
  </jsp:body>
</t:template>