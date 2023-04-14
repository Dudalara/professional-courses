package br.edu.utfpr.professional_courses.controller;

import br.edu.utfpr.professional_courses.service.CourseService;
import br.edu.utfpr.professional_courses.util.Constants;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Calendar;
import java.util.Random;

@WebServlet(name = "DashboardController", value = "/dashboard")
public class DashboardController extends HttpServlet {

 CourseService courseService = new CourseService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer counterSession = (Integer) request.getSession(true).getAttribute(Constants.COUNTER_SESSION);
        if(counterSession == null){
            counterSession = 0;
        }
        counterSession++;
        request.getSession(true).setAttribute(Constants.COUNTER_SESSION, counterSession);

        Cookie cookie = new Cookie("CookieSession", String.valueOf(counterSession));
        if(counterSession > 1){
            cookie.setMaxAge(0);
        }

        Random random = new Random();
        int randomNumber = random.nextInt(100) + 1;

       Cookie cookie2 = new Cookie("NumberUser", String.valueOf(randomNumber));



        long difference = calculateMonth();

        cookie2.setMaxAge((int) (difference / 1000));

        response.addCookie(cookie);
        response.addCookie(cookie2);

        request.setAttribute("courses", courseService.findAll());

        request.getRequestDispatcher("/WEB-INF/view/dashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    private long calculateMonth(){
        Calendar calendar = Calendar.getInstance();

        calendar.add(Calendar.MONTH, 1);
        long expiry = calendar.getTimeInMillis();
        long difference = expiry - System.currentTimeMillis();

        return difference;
    }
}
