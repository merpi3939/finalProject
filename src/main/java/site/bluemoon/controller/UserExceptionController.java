package site.bluemoon.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import site.bluemoon.exception.LoginAuthFailException;
import site.bluemoon.exception.UserinfoNotFoundException;

@ControllerAdvice
public class UserExceptionController {
	
	@ExceptionHandler(LoginAuthFailException.class)
	public String exceptionHandler(LoginAuthFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("userId", exception.getUserId());
		return "bluemoon/user/user_login";
	}
	@ExceptionHandler(UserinfoNotFoundException.class)
	public String exceptionHandler(UserinfoNotFoundException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		return "error/error";
	}
	/*
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		return "error/error";
	}
	*/
}
