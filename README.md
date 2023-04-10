# Controle de inscritos em cursos profissionalizantes.
Projeto realizado para disciplina Desenvolvimento Web 4 com o tema Controle de inscritos em cursos profissionalizantes. O objetivo do sistema é cadastrar e monitorar inscritos em cursos profissionalizantes ofertados pelo Projeto paixão pela vida.

# Checklist

# Protótipo Figma
https://www.figma.com/file/RrscOzM7RZHdu0T2qlZWg8/Controle-de-inscritos-em-cursos-profissionalizantes?node-id=2-24&t=mrXusjLFWh89drdY-0

- [ ] Encaminhamento e redirecionamento
    - [ ] Usar encaminhamento fora do modelo MVC (i.e. um servlet encaminhando a requisição para outro servlet). A dica é dividir um processamento complexo em duas etapas, ou seja, em dois servlets.
    - [ ] Usar redirecionamento depois de requisições POST de um formulário para evitar o reenvio destes dados ao atualizar a página com F5.
    - [ ] Para uma mesma rota de um Servlet, usar doGet para encaminhar a uma página e doPost para recuperar os dados da página/formulário
- [ ] Escopo de requisição, sessão e aplicação
- [ ] Cookies
    - [ ] Cookie que dura apenas uma sessão do navegador
    - [ ] Cookie com tempo de vida customizado além de uma sessão do navegador
- [ ] Filtros
    - [ ] Filtro normal de intercepção de requisição ou resposta
    - [ ] Filtro com modificação da parâmetros via Wrapper
    - [ ] Filtro para tratamento de ataques XSS
- [ ] Controle de erros e exceção via web.xml
    - [ ] Tratamento por código de status ou exceção específica
    - [ ] Tratamento de erros genérico
- [ ] Autenticação e autorização com JAAS considerando no mínimo dois papeis/roles
    - [ ] Usar JDBC Realm com formulário e senha com hash SHA-256
    - [ ] Precisa ter formulário de cadastro de usuários
- [ ] Expression Language (EL) para acessar os objetos de domínio (beans) da camada de modelo do MVC
- [ ] JSTL e TagLib
    - [ ] forEach
    - [ ] if
    - [ ] Template com cabeçalho e rodapé
- [ ] JavaScript
    - [ ] Requisição AJAX
    - [ ] Armazenamento no LocalStorage
    - [ ] Uso de plugin JQuery
- [ ] JPA
    - [ ] No mínimo 2 entidades
    - [ ] Operações de CRUD (apenas CREATE/INSERT e READ/SELECT).


