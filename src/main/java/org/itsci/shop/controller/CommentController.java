package org.itsci.shop.controller;

import org.itsci.shop.model.Comment;
import org.itsci.shop.model.Shop;
import org.itsci.shop.service.CategoryService;
import org.itsci.shop.service.CommentService;
import org.itsci.shop.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    private String title = "ความคิดเห็น";
    @Autowired
    private CommentService commentService;

    @GetMapping("/list")
    public String listComment(Model model) {
        model.addAttribute("title", "รายการ" + title);
        model.addAttribute("comments", commentService.getComments());
        return "comment/list";
    }
    @GetMapping("/create")
    public String showFormForAdd(Model model) {
        model.addAttribute("title", "เพิ่ม" + title);
        model.addAttribute("comment", new Comment());
        return "comment/comment-form";
    }

    @RequestMapping(path = "/save", method = RequestMethod.POST)
    public String processForm(@Valid @ModelAttribute("comment") Comment comment, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("title", "มีข้อผิดพลาดในการบันทึก" + title);
            return "comment/comment-form";
        } else {
            Comment entityComment = commentService.getComment(comment.getId());
            if (entityComment != null) {
                commentService.updateComment(entityComment, comment);
            } else {
                commentService.saveComment(comment);
            }
            return "redirect:/comment/list";
        }
    }
    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }
//    @GetMapping("/{id}/delete")
//    public String deleteComment(@PathVariable("id") int id) {
//        commentService.deleteComment(id);
//        return "redirect:/comment/list";
//    }

}
