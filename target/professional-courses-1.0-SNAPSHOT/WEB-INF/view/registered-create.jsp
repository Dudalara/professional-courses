<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Teste">
    <jsp:body>

        <form action="register" method="post">
            Nome: <input type="text" name="name">
            Cpf: <input type="text" name="cpf" id="input-cpf">
            Idade: <input type="text" name="age">
            Endereço: <input type="text" name="address">
            Curso: <select id="select-course" name="course" class="browser-default">
            <option value="" disabled selected>Escolha um curso</option>
        </select>
            <button>Criar</button>
        </form>
        <script>
            window.onload =  function (){
                //plugin https://igorescobar.github.io/jQuery-Mask-Plugin
                $('#input-cpf').mask('999.999.999-99');

                //ajax get para listar cursos
                $.get('courses', function(data) {
                    let $select = $('#select-course');

                    $.each(data, function(index, item) {
                        $('<option>').val(index).text(item).appendTo($select);
                    });
                });

                //evento de seleção de estado no select
                $('#select-course').change(function (){
                    //parâmetro a ser enviado
                    let params = {
                        estado: $(this).find(':selected').text()
                    }
                    //armazenamento no localstorage
                    localStorage.setItem('course', params.estado);


                });
            }
        </script>
    </jsp:body>
</t:template>