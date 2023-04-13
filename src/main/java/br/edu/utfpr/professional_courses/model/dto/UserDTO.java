package br.edu.utfpr.professional_courses.model.dto;

import lombok.Data;
import lombok.NonNull;

@Data
public class UserDTO {
    @NonNull
    private String name;
    @NonNull
    private CourseDTO state;
}
