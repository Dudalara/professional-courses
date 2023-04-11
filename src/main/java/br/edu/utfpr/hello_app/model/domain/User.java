package br.edu.utfpr.hello_app.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "users")
@Data(staticConstructor = "of")
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NonNull
    private String name;
    @NonNull @Column(name = "birth_year")
    private int year;
    @NonNull
    private int age;

    @ManyToOne
    private City city;
}
