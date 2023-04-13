package br.edu.utfpr.hello_app.model.dto;

import lombok.Data;
import lombok.NonNull;

@Data
public class CourseDTO {
    @NonNull
    private String name;
}
