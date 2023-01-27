package shop.mtcoding.apple.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import shop.mtcoding.apple.model.Board;
import shop.mtcoding.apple.model.BoardRepository;
import shop.mtcoding.apple.model.User;
import shop.mtcoding.apple.model.UserRepository;

@Controller
public class BoardController {

    @Autowired
    private BoardRepository boardRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    HttpSession session;

    @GetMapping("/list")
    public String list(Model model) {
        User user = (User) session.getAttribute("principal");
        if (user == null) {
            return "redirect:/loginForm";
        }
        List<Board> boardList = boardRepository.findById(user.getId());
        if (boardList == null) {
            return "redirect:/loginForm";
        } else {
            model.addAttribute("boardList", boardList);
            return "board/list";
        }
    }
}