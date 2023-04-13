package br.edu.utfpr.hello_app.model.mapper;

import br.edu.utfpr.hello_app.model.domain.Course;
import br.edu.utfpr.hello_app.model.dto.CourseDTO;


public class CourseMapper {

    public CourseMapper getInstance(){
        return new CourseMapper();
    }

    public static Course toEntity(CourseDTO dto){
        Course entity = new Course(dto.getName());
        return entity;
    }

    public static CourseDTO toDTO(Course entity){
        CourseDTO dto = new CourseDTO(entity.getName());
        return dto;
    }
}