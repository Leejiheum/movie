package poly.controller;

import java.io.Console;
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
import poly.service.impl.UserService;
import poly.util.CmmUtil;

@Controller
public class UserController {
	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "UserService")
	private IUserService userService;

	
	@RequestMapping(value = "Resource/action/LoginProc", method=RequestMethod.POST)
	public String LoginProc(@RequestParam Map<String, String> param ,HttpServletRequest request, HttpSession session, Model model) throws Exception {
		String id = request.getParameter("Id");
		String password = request.getParameter("Password");
		
		UserDTO uDTO = new UserDTO();
		uDTO.setUSER_ID(id);
		uDTO.setUSER_PW(password);
		//만약 비밀번호나 아이디가 일치 하지 않으면 NULL를 반환한다.
		
		uDTO = userService.getUserLogin(uDTO);
		if(uDTO == null) {
			//로그인 실패
			String msg = "로그인에 실패하셨습니다..";
			String url = "/index.do";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "Resource/index";
		} else {
			//로그인 성공
			session.setAttribute("id", uDTO.getUSER_ID());
			session.setAttribute("name", uDTO.getUSER_NAME());
		}
		return "/index";
	}
	@RequestMapping(value="Resource/action/loguot")
	public String logout (HttpSession session) throws Exception {
		session.invalidate();
		return "/index";
	}
	@RequestMapping(value = "Resource/action/userRegProc", method = RequestMethod.POST)
	public String userRegProc(HttpServletRequest request, Model model) throws Exception {
		String id = request.getParameter("Id");
		String password = request.getParameter("Password");
		String name = request.getParameter("name");
		String email = request.getParameter("Email");
		String phone = request.getParameter("Phone");
		log.info(id);
		log.info(password);
		log.info(name);
		log.info(email);
		log.info(phone);

		UserDTO uDTO = new UserDTO();
		uDTO.setUSER_ID(id);
		uDTO.setUSER_PW(password);
		uDTO.setUSER_NAME(name);
		uDTO.setUSER_MAIL(email);
		uDTO.setUSER_PHONE(phone);

		int result = userService.insertUserDTO(uDTO);

		String msg = "";
		String url = "";

		if (result != 0) {
			// 회원가입이 정상적으로 이루어진 상태
			msg = "회원가입에 성공하였습니다.";
		} else {
			// 회원가입이 이루어지지 않은 상태
			msg = "회원가입에 실패하였습니다.";
		}
		url = "/index.do";

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/index";
	}
	@RequestMapping(value="Resource/action/idChk")
	public @ResponseBody String idChk(@RequestParam(value="id") String id) throws Exception {
		//ResponseBody를 작성해주어야 javaScript에 return에 값을 넘겨주며 ajax를 사용할 수 있다.
		UserDTO uDTO = new UserDTO();
		uDTO.setUSER_ID(CmmUtil.nvl(id));
		String idChk = userService.getIdChk(uDTO);
		return idChk;
	}
	@RequestMapping(value="Resource/action/id", method= RequestMethod.POST)
	public String id(HttpServletRequest request, Model model) throws Exception {
		//아이디 찾기
		String name = request.getParameter("name");
		String phone = request.getParameter("Phone");
		UserDTO uDTO = new UserDTO();
		uDTO.setUSER_NAME(CmmUtil.nvl(name));
		uDTO.setUSER_PHONE(CmmUtil.nvl(phone));
		String idck = userService.getId(uDTO);
		model.addAttribute("idck",idck);
		return "Resource/idsearch";
	}
	@RequestMapping(value="Resource/action/pw", method= RequestMethod.POST)
	public String pw(HttpServletRequest request, Model model) throws Exception {
		//비밀번호 찾기
		String id = request.getParameter("Id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("Phone");
		System.out.println("ID :" + id);
		System.out.println("name :" + name);
		System.out.println("phone :" + phone);
		UserDTO uDTO = new UserDTO();
		uDTO.setUSER_ID(CmmUtil.nvl(id));
		uDTO.setUSER_NAME(CmmUtil.nvl(name));
		uDTO.setUSER_MAIL(CmmUtil.nvl(email));
		uDTO.setUSER_PHONE(CmmUtil.nvl(phone));
		String namech = userService.getPw(uDTO);
		String pwch = userService.getPw(uDTO);
		model.addAttribute("namech",namech);
		model.addAttribute("pwch",pwch);
		return "Resource/pwsearch";
	}
	@RequestMapping(value = "myMovie")
	public String myMovie(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		return "/myMovie";
	}
	@RequestMapping(value = "myMoviedetail")
	public String myMoviedetail(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		return "/myMoviedetail";
	}
	@RequestMapping(value = "myPage")
	public String myPage(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		return "/myPage";
	}
}
