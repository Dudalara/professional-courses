package br.edu.utfpr.hello_app.service;

import br.edu.utfpr.hello_app.model.dao.UserDAO;
import br.edu.utfpr.hello_app.model.domain.User;

public class UserService extends AbstractService<Long, User>{

    public UserService() {
        dao = new UserDAO();
    }
}
