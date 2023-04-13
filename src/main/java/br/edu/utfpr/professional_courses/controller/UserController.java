package br.edu.utfpr.professional_courses.controller;

import br.edu.utfpr.professional_courses.model.domain.User;
import br.edu.utfpr.professional_courses.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserController", value = "/create-user")
public class UserController extends HttpServlet {
    UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/WEB-INF/view/user-create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        User user = new User(login, name, password);

        //persiste no banco de dados
        userService.save(user);

        request.setAttribute("flash.register", name + " - usuário cadastrado com sucesso");
        response.sendRedirect("dashboard");

    }


}
