package br.edu.utfpr.professional_courses.model.dto;

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
