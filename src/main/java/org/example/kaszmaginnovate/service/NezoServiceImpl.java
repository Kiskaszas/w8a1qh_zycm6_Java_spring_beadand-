package org.example.kaszmaginnovate.service;

import org.example.kaszmaginnovate.controller.response.NezoResponse;
import org.example.kaszmaginnovate.model.Nezo;
import org.example.kaszmaginnovate.repository.NezoRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class NezoServiceImpl implements NezoService {

    private final NezoRepository nezoRepository;

    public NezoServiceImpl(final NezoRepository nezoRepository) {
        this.nezoRepository = nezoRepository;
    }

    @Override
    public Optional<Nezo> save(Nezo nezo) {
        return Optional.of(nezoRepository.save(nezo));
    }

    @Override
    public Optional<List<Nezo>> findAll() {
        return Optional.of(nezoRepository.findAll());
    }

    @Override
    public Optional<Nezo> findById(Long id) {
        return nezoRepository.findById(id);
    }

    @Override
    public NezoResponse update(Long id, Nezo nezoDetails) {
        Optional<Nezo> nezoOpcional = findById(id);
        Nezo nezo = nezoOpcional.orElse(null);
        if (nezo != null) {
            nezo.setId(id);
            nezo.setNev(nezoDetails.getNev());
            nezo.setFerfi(nezoDetails.isFerfi());
            nezo.setBerletes(nezoDetails.isBerletes());
            var updatedNezo = Optional.of(nezoRepository.save(nezo)).get();
            return new NezoResponse(
                    true,
                    "Sikeres Felhasznáó frissítés",
                    null,
                    updatedNezo);
        }
        return new NezoResponse(
                false,
                "Sikertelen felhasználó frissírés",
                List.of("404 A felhasználó nem található"),
                null);
    }

    @Override
    public void delete(Long id) {
        nezoRepository.deleteById(id);
    }

    @Override
    public Page<Nezo> getAllNezo(Pageable pageable) {
        return nezoRepository.findAll(pageable);
    }

    @Override
    public boolean existsByNev(String nev) {
        return nezoRepository.existsNezoByNev(nev);
    }
}