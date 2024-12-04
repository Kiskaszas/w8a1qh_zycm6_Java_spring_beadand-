package org.example.kaszmaginnovate.controller;

import org.example.kaszmaginnovate.config.AuthConfiguration;
import org.example.kaszmaginnovate.controller.response.MeccsResponse;
import org.example.kaszmaginnovate.model.Meccs;
import org.example.kaszmaginnovate.service.MeccsService;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping
public class MeccsController {

    private final MeccsService meccsService;
    private final AuthConfiguration auth;

    public MeccsController(final MeccsService meccsService, final AuthConfiguration auth) {
        this.meccsService = meccsService;
        this.auth = auth;
    }

    @GetMapping("/football/meccsek")
    public ResponseEntity<List<Meccs>> getAllMeccsek() {
        Optional<List<Meccs>> meccsListOptional = meccsService.findAll();
        return ResponseUtil.toResponseEntity(meccsListOptional);
    }

    @GetMapping("/football/meccs/{id}")
    public ResponseEntity<Meccs> getMeccsById(@PathVariable Long id) {
        Optional<Meccs> meccsOptional = meccsService.findById(id);
        return ResponseUtil.toResponseEntity(meccsOptional);
    }

    @PostMapping("/football/meccs")
    public ResponseEntity<Meccs> createMeccs(@RequestBody Meccs meccs) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build(); // Forbidden
        }
        Optional<Meccs> meccsOptional = meccsService.save(meccs);
        return meccsOptional.map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.status(500).build());
    }


    @PutMapping(value = "/football/meccs/{id}")
    public ResponseEntity<MeccsResponse> updateMeccs(@PathVariable Long id, @RequestBody Meccs meccs) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build(); // Forbidden
        }
        MeccsResponse meccsResponse = meccsService.update(id, meccs);
        return ResponseUtil.toResponseEntity(Optional.ofNullable(meccsResponse));
    }

    @DeleteMapping("/football/meccs/{id}")
    public ResponseEntity<Void> deleteMeccs(@PathVariable Long id) {
        if (!auth.isAdmin()) {
            return ResponseEntity.status(403).build(); // Forbidden
        } else {
            Optional<Meccs> meccsOptional = meccsService.findById(id);
            if (meccsOptional.isPresent()) {
                meccsService.delete(meccsOptional.get().getId());
                return ResponseEntity.noContent().build();
            }
        }
        return ResponseEntity.notFound().build();
    }
}
