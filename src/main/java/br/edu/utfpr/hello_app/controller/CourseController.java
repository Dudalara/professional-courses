package br.edu.utfpr.hello_app.controller;

import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CourseController", urlPatterns = {"/course", "/courses"})
public class CourseController extends HttpServlet {

    public void init() throws ServletException {
        ServletContext context = getServletContext();
        List<String> courses = new ArrayList<>();
        courses.add("Manicure");
        courses.add("Cabeleireiro");
        courses.add("Informática");

        context.setAttribute("courses", courses);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext context = getServletContext();

        List<String> courses = (List<String>) context.getAttribute("courses");

        String json = new Gson().toJson(courses);
        json = new String(json.getBytes(), "UTF-8");

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
