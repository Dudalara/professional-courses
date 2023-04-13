package br.edu.utfpr.hello_app.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "courses")
@Data
@NoArgsConstructor(force = true)
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NonNull
    private String name;
}
