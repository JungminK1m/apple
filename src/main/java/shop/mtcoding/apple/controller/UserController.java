package shop.mtcoding.apple.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.apple.model.User;
import shop.mtcoding.apple.model.UserRepository;

@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    HttpSession session;

    @GetMapping("/joinForm")
    public String joinForm() {
        return "user/joinForm";
    }

    @PostMapping("/join")
    public String join(String username, String password, String email) {
        int result = userRepository.insert(username, password, email);
        if (result == 1) {
            return "redirect:/loginForm";
        } else {
            return "redirect:/joinform";
        }
    }

    @GetMapping({ "/", "/loginForm" })
    public String loginForm() {
        return "user/loginForm";
    }

    @PostMapping("/login")
    public String login(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, password);
        if (user == null) {
            return "redirect:/loginform";
        } else {
            session.setAttribute("principal", user);
            return "redirect:/list";
        }
    }

    @GetMapping("/logout")
    public String logout() {
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("/updateForm")
    public String updateForm() {
        return "user/updateForm";
    }

    @PostMapping("/update")
    public String updateById(String username, String password, String email) {
        User user = (User) session.getAttribute("principal");
        int result = userRepository.updateById(user.getId(), username, password, email);
        if (result == 1) {
            return "redirect:/loginForm";
        } else {
            return " redirect:/updateForm";
        }
    }

}