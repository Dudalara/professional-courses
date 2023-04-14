<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Dashboard">
  <jsp:body>
      <c:out value="${register}" />
      <c:if test="${not empty courses}">
          <ul>
              <c:forEach var="course" items="${courses}">
                  <div class="row">
                      <div class="col s12">
                          <div class="card ">
                              <div class="card-content">
                                  <div class="row">
                                  <span class="card-title">Curso de ${course.name}</span>
                                  <a href="registered-list?course=${course.id}" class="btn col s8 offset-s2">Visualizar inscritos</a>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </c:forEach>
          </ul>
      </c:if>
      <c:if test="${empty courses}">
          Não há cursos disponíveis
      </c:if>
  </jsp:body>
</t:template>
