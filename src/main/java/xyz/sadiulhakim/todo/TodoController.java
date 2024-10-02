package xyz.sadiulhakim.todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

@Controller
public class TodoController {
    private final CopyOnWriteArrayList<Todo> list = new CopyOnWriteArrayList<>();


    @GetMapping("/")
    public String home(Model model) {

        model.addAttribute("list", list);
        return "index";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute Todo todo, Model model) {
        list.add(new Todo(UUID.randomUUID().toString(), todo.todo()));
        model.addAttribute("list", list);

        return "partials/list";
    }
}
