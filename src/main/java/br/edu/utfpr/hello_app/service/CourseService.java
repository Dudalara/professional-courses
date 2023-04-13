package br.edu.utfpr.hello_app.service;

import br.edu.utfpr.hello_app.model.dao.CourseDAO;
import br.edu.utfpr.hello_app.model.domain.Course;

public class CourseService extends AbstractService<Long, Course>{

    public CourseService() {
        dao = new CourseDAO();
    }
}
