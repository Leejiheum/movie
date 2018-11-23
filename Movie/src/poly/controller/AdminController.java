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

import poly.dto.NoticeDTO;
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
		List<UserDTO> uList = userService.getUserList();
		model.addAttribute("uList", uList);
		return "/Admin_users";
	}
	@RequestMapping(value="Admin_usersdetail")
	public String Admin_usersdetail(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception{
		String USER_ID = req.getParameter("USER_ID");
		UserDTO uDTO = userService.getUserDetail(USER_ID);
		model.addAttribute("uDTO",uDTO);
		return "/Admin_usersdetail";
	}
	@RequestMapping(value="UserUpdateProc", method= RequestMethod.POST)
	public String UserUpdateProc(HttpServletRequest request, Model model) throws Exception {
		String USER_ID = request.getParameter("USER_ID"); //비밀번호
		String USER_PW = request.getParameter("USER_PW"); //비밀번호
		String USER_NAME = request.getParameter("USER_NAME"); //이름
		String USER_MAIL = request.getParameter("USER_MAIL"); //이메일
		String USER_PHONE = request.getParameter("USER_PHONE"); //전화번호
		String active = request.getParameter("active"); //계정상태
		UserDTO uDTO = new UserDTO();
		uDTO.setUSER_ID(USER_ID);
		uDTO.setUSER_PW(USER_PW);
		uDTO.setUSER_NAME(USER_NAME);
		uDTO.setUSER_MAIL(USER_MAIL);
		uDTO.setUSER_PHONE(USER_PHONE);
		uDTO.setUSER_ACTIVE(active);
		
		int result = userService.updateUser(uDTO);
	
		if (result!=0) {
			String msg="정보가 수정되었습니다.";
			String url = "/Admin_usersdetail.do?USER_ID="+ USER_ID;
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
			return "/alert";
		} else {
		}
		String msg="수정을 실패 하였습니다.";
		String url = "/Admin_usersdetail.do?USER_ID="+ USER_ID;
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "/alert";
	}
}
