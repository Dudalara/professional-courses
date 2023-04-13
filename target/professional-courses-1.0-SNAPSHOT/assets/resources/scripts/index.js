
    window.onload =  function () {
    var currentUrl = window.location.href;

    var tag = document.getElementById("list");
    if (currentUrl.includes("dashboard")) {
    tag.style.display = "block";
} else {
    tag.style.display = "none";

}
        $('#login').on('focusout', function(){
            var login = document.getElementById("login").value;
            localStorage.setItem('login', login);
            localStorage.getItem(login);
        })


        $('#input-cpf').mask('999.999.999-99');

        $.get('courses', function(data) {
            let $select = $('#select-course');

            $.each(data, function(index, item) {
                index = index + 1;

                $('<option>').val(index).text(item).appendTo($select);
            });
        });

    }

