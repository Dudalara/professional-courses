# Controle de inscritos em cursos profissionalizantes.
Projeto realizado para disciplina Desenvolvimento Web 4 com o tema Controle de inscritos em cursos profissionalizantes. O objetivo do sistema é cadastrar e monitorar inscritos em cursos profissionalizantes ofertados pelo Projeto paixão pela vida.

# Checklist

# Protótipo Figma
https://www.figma.com/file/RrscOzM7RZHdu0T2qlZWg8/Controle-de-inscritos-em-cursos-profissionalizantes?node-id=2-24&t=mrXusjLFWh89drdY-0

- [ ] Encaminhamento e redirecionamento
    - [ ] Usar encaminhamento fora do modelo MVC (i.e. um servlet encaminhando a requisição para outro servlet). A dica é dividir um processamento complexo em duas etapas, ou seja, em dois servlets.
    - [X] Usar redirecionamento depois de requisições POST de um formulário para evitar o reenvio destes dados ao atualizar a página com F5.
    - [X] Para uma mesma rota de um Servlet, usar doGet para encaminhar a uma página e doPost para recuperar os dados da página/formulário
- [X] Escopo de requisição, sessão e aplicação
- [X] Cookies
    - [X] Cookie que dura apenas uma sessão do navegador
    - [X] Cookie com tempo de vida customizado além de uma sessão do navegador
- [X] Controle de erros e exceção via web.xml
    - [X] Tratamento por código de status ou exceção específica
    - [X] Tratamento de erros genérico
- [X] Expression Language (EL) para acessar os objetos de domínio (beans) da camada de modelo do MVC
- [ ] JSTL e TagLib
    - [ ] forEach
    - [ ] if
    - [X] Template com cabeçalho e rodapé
- [x] JavaScript
    - [x] Requisição AJAX
    - [] Armazenamento no LocalStorage
    - [x] Uso de plugin JQuery
- [X] JPA
    - [X] No mínimo 2 entidades
    - [X] Operações de CRUD (apenas CREATE/INSERT e READ/SELECT).


