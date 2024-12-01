package org.example.kaszmaginnovate.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@Table(name = "belepes")
public class Belepes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "nezoid", nullable = false)
    @JsonBackReference
    private Nezo nezo;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "meccsid", nullable = false)
    @JsonBackReference
    private Meccs meccs;

    @Column(nullable = false)
    private String idopont;
}