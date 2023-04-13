package br.edu.utfpr.professional_courses.controller;

import br.edu.utfpr.professional_courses.model.domain.Course;
import br.edu.utfpr.professional_courses.model.domain.Registered;
import br.edu.utfpr.professional_courses.service.CourseService;
import br.edu.utfpr.professional_courses.service.RegisteredService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisteredController", value = "/register")
public class RegisteredController extends HttpServlet {
    RegisteredService registeredService = new RegisteredService();
    CourseService courseService = new CourseService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/WEB-INF/view/registered-create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String cpf = request.getParameter("cpf");
        String ageString = request.getParameter("age");
        Integer age = Integer.parseInt(ageString);
        String address = request.getParameter("address");

        String courseValue = request.getParameter("course");

        Long courseId = Long.parseLong(courseValue);
        Course course = courseService.getById(courseId);

        Registered registered = new Registered(name, cpf, age, address, course);

        registeredService.save(registered);

        request.setAttribute("flash.register", name + " - inscrição cadastrada com sucesso");
        response.sendRedirect("dashboard");
    }
}
