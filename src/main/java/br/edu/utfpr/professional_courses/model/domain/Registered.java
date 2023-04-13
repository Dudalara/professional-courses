package br.edu.utfpr.professional_courses.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "registers")
@Data(staticConstructor = "of")
@NoArgsConstructor(force = true)
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Registered {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NonNull
    private String name;

    @NonNull
    private String cpf;

    @NonNull
    private int age;

    @NonNull
    private String address;

    @ManyToOne
    @NonNull
    private Course course;
}
