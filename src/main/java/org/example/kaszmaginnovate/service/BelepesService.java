package org.example.kaszmaginnovate.service;

import org.example.kaszmaginnovate.model.Belepes;
import org.example.kaszmaginnovate.model.Meccs;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional
public interface BelepesService {
    Optional<List<Belepes>> findByMeccsId(Long id);
    Optional<List<Belepes>> findByNezoId(Long nezoId);
    Optional<List<Belepes>> findByIdopont(String idopont);
    Optional<Belepes> save(Belepes belepes);
    Optional<List<Belepes>> findAll();
    Optional<Belepes> update(Long id, Belepes belepesDetails);
    //void delete(Long nezoId, Long meccsId, String idopont);

    //void deleteByMeccs(Meccs meccs);

    Page<Belepes> findAllBelepes(Pageable pageable);

    void deleteById(Long id);
}
