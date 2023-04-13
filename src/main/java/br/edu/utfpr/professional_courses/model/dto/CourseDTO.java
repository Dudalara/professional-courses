package br.edu.utfpr.professional_courses.model.dto;

import lombok.Data;
import lombok.NonNull;

@Data
public class CourseDTO {
    @NonNull
    private String name;
}
