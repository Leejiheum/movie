package poly.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.UserDTO;
import poly.service.IUserService;
import poly.util.CmmUtil;

@Controller
public class AdminController {
	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "UserService")
	private IUserService userService;
	
	@RequestMapping(value="Admin_grade")
	public String Admin_grade(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception{
		return "/Admin_grade";
	}
	@RequestMapping(value="Admin_users")
	public String Admin_users(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception{
		return "/Admin_users";
	}
	@RequestMapping(value="Admin_usersdetail")
	public String Admin_usersdetail(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception{
		return "/Admin_usersdetail";
	}
}
