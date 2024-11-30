package org.example.kaszmaginnovate.controller;

import org.example.kaszmaginnovate.config.AuthConfiguration;
import org.example.kaszmaginnovate.model.Belepes;
import org.example.kaszmaginnovate.service.BelepesService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/football/belepes")
public class BelepesController {

    private final BelepesService belepesService;
    private final AuthConfiguration auth;

    public BelepesController(final BelepesService belepesService, final AuthConfiguration auth) {
        this.belepesService = belepesService;
        this.auth = auth;
    }

    @GetMapping
    public Optional<List<Belepes>> getAllBelepes() {
        return belepesService.findAll();
    }

    @GetMapping("/meccs/{meccsId}")
    public ResponseEntity<List<Belepes>> getBelepesByMeccsId(@PathVariable Long meccsId) {
        return belepesService.findByMeccsId(meccsId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/nezo/{nezoId}")
    public ResponseEntity<List<Belepes>> getBelepesByNezoId(@PathVariable Long nezoId) {
        return belepesService.findByNezoId(nezoId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/{idopont}")
    public ResponseEntity<List<Belepes>> getBelepesByIdopont(@PathVariable String idopont) {
        return belepesService.findByIdopont(idopont)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<Optional<Belepes>> createBelepes(@RequestBody Belepes belepes) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build(); // Forbidden
        }
        return ResponseEntity.ok(belepesService.save(belepes));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Belepes> updateBelepes(@PathVariable Long id, @RequestBody Belepes belepes) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build(); // Forbidden
        }
        return belepesService.update(id, belepes)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteBelepesByMeccsAndIdopont(
            @PathVariable Long id
    ) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build();
        } else {
            belepesService.deleteById(id);
        }
        return ResponseEntity.ok("Deleted successfully");
    }
}
