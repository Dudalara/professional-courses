<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Lista de inscritos">
  <jsp:body>
    <div class="container">
    <table>
      <thead>
      <tr>
        <th>Nome</th>
        <th>Idade</th>
        <th>Endereço</th>
        <th>Curso </th>
      </tr>
      </thead>

      <tbody>
    <c:if test="${not empty registers}">
    <c:forEach var="register" items="${registers}">
      <tr>
        <td>${register.name}</td>
        <td>${register.age}</td>
        <td>${register.address}</td>
        <td>${register.course.name}</td>
      </tr>
    </c:forEach>
    </c:if>
    </tr>

      </tbody>
    </table>
    <div class="row buttons">
      <div class="col s6 left-align">
        <a href="dashboard" class="btn">Voltar</a>
      </div>
      <div class="col s6 right-align">
        <a href="register" class="btn">Nova inscrição</a>
      </div>
    </div>
    </div>
  </jsp:body>
</t:template>
