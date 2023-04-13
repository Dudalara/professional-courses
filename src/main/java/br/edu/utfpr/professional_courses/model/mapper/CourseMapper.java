package br.edu.utfpr.professional_courses.model.mapper;

import br.edu.utfpr.professional_courses.model.domain.Course;
import br.edu.utfpr.professional_courses.model.dto.CourseDTO;


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