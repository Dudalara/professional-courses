package br.edu.utfpr.professional_courses.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NonNull
    private String name;

    @NonNull
    private String login;

    @NonNull
    private String password;

}
