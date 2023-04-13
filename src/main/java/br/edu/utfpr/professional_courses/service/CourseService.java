package br.edu.utfpr.professional_courses.service;

import br.edu.utfpr.professional_courses.model.dao.CourseDAO;
import br.edu.utfpr.professional_courses.model.domain.Course;

public class CourseService extends AbstractService<Long, Course>{

    public CourseService() {
        dao = new CourseDAO();
    }
}
