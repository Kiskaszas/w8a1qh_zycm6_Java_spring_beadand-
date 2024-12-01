package org.example.kaszmaginnovate.controller;

import org.example.kaszmaginnovate.config.AuthConfiguration;
import org.example.kaszmaginnovate.model.Nezo;
import org.example.kaszmaginnovate.service.NezoService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/football/nezo")
public class NezoController {

    private final NezoService nezoService;
    private final AuthConfiguration auth;

    public NezoController(final NezoService nezoService, final AuthConfiguration auth) {
        this.nezoService = nezoService;
        this.auth = auth;
    }

    @GetMapping
    public ResponseEntity<List<Nezo>> getAllNezo() {
        List<Nezo> nezoList = nezoService.findAll().orElseThrow(() -> new RuntimeException("No viewers found."));
        return ResponseEntity.ok(nezoList);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Nezo> getNezoById(@PathVariable Long id) {
        return nezoService.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<String> createNezo(@RequestBody Nezo nezo) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build(); // Forbidden
        }

        boolean exists = nezoService.existsByNev(nezo.getNev());
        if (exists) {
            return ResponseEntity.badRequest().body("A néző már létezik az adatbázisban.");
        }

        // Mentés, ha nem létezik
        Nezo savedNezo = nezoService.save(nezo).get();
        return ResponseEntity.ok("Sikeressen hozzáadtad a nézőt");
    }

    @PutMapping("/{id}")
    public ResponseEntity<Nezo> updateNezo(@PathVariable Long id, @RequestBody Nezo nezo) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build(); // Forbidden
        }
        return nezoService.update(id, nezo)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteNezo(@PathVariable Long id) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build(); // Forbidden
        } else if (nezoService.findById(id).isPresent()) {
            nezoService.delete(id);
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.notFound().build();
    }
}