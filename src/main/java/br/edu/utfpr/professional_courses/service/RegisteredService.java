package br.edu.utfpr.professional_courses.service;

import br.edu.utfpr.professional_courses.model.dao.RegisteredDAO;
import br.edu.utfpr.professional_courses.model.domain.Registered;

import java.util.List;

public class RegisteredService extends AbstractService<Long, Registered>{

    public RegisteredService() {
        dao = new RegisteredDAO();
    }

    public List<Registered> listEnrolledByCourse(String propertyName, Object propertyValue)
    {
        List<Registered> registers = dao.listByForeignOrObjectProperty(propertyName, propertyValue);
        return registers;
    }

}
