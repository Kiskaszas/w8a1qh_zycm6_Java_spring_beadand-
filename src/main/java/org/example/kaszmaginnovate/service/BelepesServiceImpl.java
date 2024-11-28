package org.example.kaszmaginnovate.service;

import jakarta.persistence.EntityNotFoundException;
import org.example.kaszmaginnovate.model.Belepes;
import org.example.kaszmaginnovate.model.Meccs;
import org.example.kaszmaginnovate.model.Nezo;
import org.example.kaszmaginnovate.repository.BelepesRepository;
import org.example.kaszmaginnovate.repository.MeccsRepository;
import org.example.kaszmaginnovate.repository.NezoRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BelepesServiceImpl implements BelepesService {

    private final BelepesRepository belepesRepository;
    private final MeccsRepository meccsRepository;
    private final NezoRepository nezoRepository;

    public BelepesServiceImpl(
            final BelepesRepository belepesRepository,
            final MeccsRepository meccsRepository,
            final NezoRepository nezoRepository
    ) {
        this.belepesRepository = belepesRepository;
        this.meccsRepository = meccsRepository;
        this.nezoRepository = nezoRepository;
    }

    @Override
    public Optional<List<Belepes>> findByMeccsId(Long meccsId) {
        Meccs meccs = meccsRepository.findById(meccsId)
                .orElseThrow(() -> new EntityNotFoundException("Meccs nem található az adott ID-val: " + meccsId));
        return Optional.of(belepesRepository.findBelepesByMeccs(meccs));
    }

    @Override
    public Optional<List<Belepes>> findByNezoId(Long nezoId) {
        Nezo nezo = nezoRepository.findById(nezoId)
                .orElseThrow(() -> new EntityNotFoundException("Néző nem található az adott ID-val: " + nezoId));
        return Optional.of(belepesRepository.findBelepesByNezo(nezo));
    }

    @Override
    public Optional<List<Belepes>> findByIdopont(String idopont) {
        return Optional.ofNullable(
                Optional.of(
                        belepesRepository.findBelepesByIdopont(idopont))
                        .orElseThrow(() -> new EntityNotFoundException("Időpont nem található az adott időpontal: " + idopont)));
    }


    @Override
    public Optional<Belepes> save(Belepes belepes) {
        return Optional.of(belepesRepository.save(belepes));
    }

    @Override
    public Optional<List<Belepes>> findAll() {
        return Optional.of(belepesRepository.findAll());
    }

    @Override
    public Optional<Belepes> update(Long id, Belepes belepesDetails) {
        Optional<Belepes> belepesOptional = belepesRepository.findById(id);
        Belepes belepes = belepesOptional.orElse(null);
        if (belepes != null) {
            belepes.setNezo(belepesDetails.getNezo());
            belepes.setMeccs(belepesDetails.getMeccs());
            belepes.setIdopont(belepesDetails.getIdopont());
            return Optional.of(belepesRepository.save(belepes));
        }
        return null;
    }

    /*@Override
    public void delete(Long nezoId, Long meccsId, String idopont) {
        Nezo nezo = nezoRepository.findById(nezoId)
                .orElseThrow(() -> new EntityNotFoundException("Néző nem található az adott ID-val: " + nezoId));
        Meccs meccs = meccsRepository.findById(meccsId)
                .orElseThrow(() -> new EntityNotFoundException("Meccs nem található az adott ID-val: " + meccsId));

        belepesRepository.deleteBelepesByNezoAndMeccsAndIdopont(nezo, meccs, idopont);
    }

    @Override
    public void deleteByMeccs(Meccs meccs) {
        belepesRepository.deleteByMeccs(meccs);
    }*/

    @Override
    public void deleteById(Long id) {
        belepesRepository.deleteById(id);
    }

    @Override
    public Page<Belepes> findAllBelepes(Pageable pageable) {
        return belepesRepository.findAll(pageable);
    }
}
