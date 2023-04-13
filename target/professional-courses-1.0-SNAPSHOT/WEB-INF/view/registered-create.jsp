<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Inscrição">
    <jsp:body>

        <form action="register" method="post">
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="name" type="text" name="name">
                            <label for="name">Nome</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="input-cpf" type="text" name="cpf">
                            <label for="input-cpf">CPF</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="age" type="number" name="age">
                            <label for="age">Idade</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="address" type="text" name="address">
                            <label for="address">Endereço</label>
                        </div>
                    </div>
            <div class="input-field col s12">
                <select  id="select-course" name="course" class="browser-default">
                    <option value="" disabled selected>Selecionae um curso</option>
                </select>
                <label for="select-course">Curso</label>
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