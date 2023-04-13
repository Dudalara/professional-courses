package br.edu.utfpr.hello_app.model.dto;

import lombok.Data;
import lombok.NonNull;

@Data
public class RegisteredDTO {
    @NonNull
    private String name;
    @NonNull
    private String cpf;
    @NonNull
    private int age;
    @NonNull
    private String address;
}
