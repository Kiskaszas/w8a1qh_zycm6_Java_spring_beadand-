package org.example.kaszmaginnovate.controller;

import org.example.kaszmaginnovate.model.Message;
import org.example.kaszmaginnovate.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/uzenetek")
@PreAuthorize("hasRole('ADMIN')")
public class MessageController {

    @Autowired
    private MessageRepository messageRepository;

    @GetMapping("/{id}")
    @ResponseBody
    public Message getMessageById(@PathVariable Long id) {
        return messageRepository.findById(id).orElse(null);
    }

    @DeleteMapping("/{id}")
    @ResponseBody
    public void deleteMessage(@PathVariable Long id) {
        messageRepository.deleteById(id);
    }
}
