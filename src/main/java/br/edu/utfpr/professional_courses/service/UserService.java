package br.edu.utfpr.professional_courses.service;

import br.edu.utfpr.professional_courses.model.dao.UserDAO;
import br.edu.utfpr.professional_courses.model.domain.User;

public class UserService extends AbstractService<Long, User>{

    public UserService() {
        dao = new UserDAO();
    }
}
