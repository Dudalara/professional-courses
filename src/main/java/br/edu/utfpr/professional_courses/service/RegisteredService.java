package br.edu.utfpr.professional_courses.service;

import br.edu.utfpr.professional_courses.model.dao.RegisteredDAO;
import br.edu.utfpr.professional_courses.model.domain.Registered;

public class RegisteredService extends AbstractService<Long, Registered>{

    public RegisteredService() {
        dao = new RegisteredDAO();
    }
}
