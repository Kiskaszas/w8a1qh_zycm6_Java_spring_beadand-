package org.example.kaszmaginnovate.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@Table(name = "meccs")
public class Meccs implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    @Column(nullable = false)
    @JsonProperty
    private String datum;

    @Column(nullable = false)
    @JsonProperty
    private String kezdes;

    @Column(nullable = false)
    @JsonProperty
    private int belepo;

    @Column(nullable = false)
    @JsonProperty
    private String tipus;

    @OneToMany(mappedBy = "meccs", orphanRemoval = true)
    @JsonIgnore
    private List<Belepes> belepesek = new ArrayList<>();
}