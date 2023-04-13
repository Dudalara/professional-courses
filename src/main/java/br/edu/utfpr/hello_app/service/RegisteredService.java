package br.edu.utfpr.hello_app.service;

import br.edu.utfpr.hello_app.model.dao.RegisteredDAO;
import br.edu.utfpr.hello_app.model.domain.Registered;

import java.util.Calendar;

public class RegisteredService extends AbstractService<Long, Registered>{

    public RegisteredService() {
        dao = new RegisteredDAO();
    }
}
