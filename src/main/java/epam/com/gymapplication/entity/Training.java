package epam.com.gymapplication.entity;


import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "training")
public class Training {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private Long id;

    private String trainingName;
    private LocalDate trainingDate;
    private Integer trainingDuration;


    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
