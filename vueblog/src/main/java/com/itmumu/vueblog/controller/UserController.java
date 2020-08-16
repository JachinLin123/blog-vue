package com.itmumu.vueblog.controller;

import com.itmumu.vueblog.common.lang.Result;
import com.itmumu.vueblog.entity.User;
import com.itmumu.vueblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author JachinLin
 * @since 2020-08-05
 */
@RestController @RequestMapping("/user") public class UserController {

    @Autowired UserService userService;

    @GetMapping("/index") public Object index() {
        User user = userService.getById(1L);
        return Result.succ(user);

    }

    @PostMapping("/save") public Result save(@Validated @RequestBody User user) {
        return Result.succ(user);
    }
}
