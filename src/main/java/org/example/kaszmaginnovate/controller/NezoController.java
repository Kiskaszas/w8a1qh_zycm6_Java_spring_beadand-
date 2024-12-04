package org.example.kaszmaginnovate.controller;

import org.example.kaszmaginnovate.config.AuthConfiguration;
import org.example.kaszmaginnovate.controller.response.NezoResponse;
import org.example.kaszmaginnovate.model.Nezo;
import org.example.kaszmaginnovate.service.NezoService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping
public class NezoController {

    private final NezoService nezoService;
    private final AuthConfiguration auth;

    public NezoController(final NezoService nezoService, final AuthConfiguration auth) {
        this.nezoService = nezoService;
        this.auth = auth;
    }

    @GetMapping("/football/nezo")
    public ResponseEntity<List<Nezo>> getAllNezo() {
        List<Nezo> nezoList = nezoService.findAll().orElseThrow(() -> new RuntimeException("No viewers found."));
        return ResponseEntity.ok(nezoList);
    }

    @GetMapping("/football/nezo/{id}")
    public ResponseEntity<Nezo> getNezoById(@PathVariable Long id) {
        return nezoService.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping("/football/nezo")
    public ResponseEntity<String> createNezo(@RequestBody Nezo nezo) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build(); // Forbidden
        }

        boolean exists = nezoService.existsByNev(nezo.getNev());
        if (exists) {
            return ResponseEntity.badRequest().body("A néző már létezik az adatbázisban.");
        }

        nezoService.save(nezo);
        return ResponseEntity.ok("Sikeressen hozzáadtad a nézőt");
    }

    @PutMapping("/football/nezo/{id}")
    public ResponseEntity<NezoResponse> updateNezo(@PathVariable Long id, @RequestBody Nezo nezo) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build();
        }
        NezoResponse nezoResponse = nezoService.update(id, nezo);
        return ResponseUtil.toResponseEntity(Optional.ofNullable(nezoResponse));
    }

    @DeleteMapping("/football/nezo/{id}")
    public ResponseEntity<Void> deleteNezo(@PathVariable Long id) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build();
        } else if (nezoService.findById(id).isPresent()) {
            nezoService.delete(id);
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.notFound().build();
    }
}