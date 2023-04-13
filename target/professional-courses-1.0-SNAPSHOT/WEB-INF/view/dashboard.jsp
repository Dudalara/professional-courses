<%--
  Created by IntelliJ IDEA.
  User: ronifabio
  Date: 03/03/2021
  Time: 18:41
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Resultado">
  <jsp:body>
      <c:out value="${register}" />
      <c:if test="${not empty courses}">
          <ul>
              <c:forEach var="course" items="${courses}">
                  <div class="row">
                      <div class="col s12 m6">
                          <div class="card blue-grey darken-1">
                              <div class="card-content white-text">
                                  <span class="card-title">${course.name}</span>
                                  <p>I am a very simple card. I am good at containing small bits of information.
                                      I am convenient because I require little markup to use effectively.</p>
                              </div>
                              <div class="card-action">
                                  <a href="#">This is a link</a>
                              </div>
                          </div>
                      </div>
                  </div>
              </c:forEach>
          </ul>
      </c:if>
      <c:if test="${empty courses}">
          Não há usuários na lista
      </c:if>
  </jsp:body>
</t:template>
