package poly.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.dto.NoticeDTO;
import poly.service.INoticeService;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */
@Controller
public class NoticeController {
	private Logger log = Logger.getLogger(this.getClass());

	/*
	 * 비즈니스 로직(중요 로직을 수행하기 위해 사용되는 서비스를 메모리에 적재(싱글톤패턴 적용됨)
	 */
	@Resource(name = "NoticeService")
	private INoticeService noticeService;

	/*
	 * 함수명 위의 value="notice/NoticeList" => /notice/NoticeList.do로 호출되는 url은 무조건 이
	 * 함수가 실행된다. method=RequestMethod.GET => 폼 전송방법을 지정하는 것으로 get방식은 GET, post방식은
	 * POST이다. method => 기입안하면 GET, POST 모두 가능하나, 가급적 적어주는 것이 좋다.
	 */


	
	@RequestMapping(value = "user/NoticeList")
	public String NoticeList(HttpServletRequest request, Model model) throws Exception {

		List<NoticeDTO> nList = noticeService.getNoticeList();
		
		model.addAttribute("nList", nList);
		return "/user/NoticeList";
	}
	
	@RequestMapping(value="user/NoticeDetail")
	public String NoticeDetail(HttpServletRequest request, Model model) throws Exception {
		String Notice_seq = request.getParameter("Notice_seq");
		log.info("Notice_seq :" + Notice_seq);
		NoticeDTO nDTO = noticeService.getNoticeDetail(Notice_seq);
		log.info("1");
		model.addAttribute("nDTO",nDTO);
		log.info("2");
		return "user/NoticeDetail";
	}
	
	@RequestMapping(value="notice/NoticeDetaildel", method= RequestMethod.GET)
	public String NoticeDetaildel(HttpServletRequest request, Model model) throws Exception {
	
		String Notice_seq = request.getParameter("Notice_seq");
		log.info("Notice_seq : "+ Notice_seq);
		int result = noticeService.deleteNoticeDTO(Notice_seq);
		log.info("nDTO : " +result);

		String msg = "";
		String url = "";

		if (result!=0) {
			// 회원삭제가 정상적으로 이루어진 상태
			msg = "게시글삭제에 성공하였습니다.";
			url = "/main.do";
		} else {
			// 회원삭제가 이루어지지 않은 상태
			msg = "게시글삭제에 실패하였습니다.";
			url = "/main.do";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/alert";
	}
	@RequestMapping(value="notice/NoticeUpdateView", method = RequestMethod.GET)
	public String NoticeUpdateView(HttpServletRequest request, Model model) throws Exception {
		String Notice_seq = request.getParameter("Notice_seq");
		NoticeDTO nDTO = noticeService.getNoticeDetail(Notice_seq);
		model.addAttribute("nDTO", nDTO);
		return "/notice/NoticeUpdateView";
	}
	
	@RequestMapping(value="notice/NoticeUpdateProc", method= RequestMethod.POST)
	public String NoticeUpdateProc(HttpServletRequest request, Model model) throws Exception {
		String Notice_seq = request.getParameter("Notice_seq");
		log.info("Notice_seq :" + Notice_seq);
		String title = request.getParameter("title");
		log.info("title :" + title);
		String contents = request.getParameter("contents");
		log.info("contents :" + contents);
		
		NoticeDTO nDTO = new NoticeDTO();
		nDTO.setNotice_seq(Notice_seq);
		nDTO.setTitle(title);
		nDTO.setContents(contents);
		log.info("116"+nDTO.getNotice_seq());
		
		int result = noticeService.updateNotice(nDTO);
		
	
		if (result!=0) {
			return "redirect:/main.do";
		} else {
		}
		String msg="수정 실패";
		String url = "notice/NoticeUpdateView.do?Notice_seq="+ Notice_seq;
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "/alert";
	}
	@RequestMapping(value="notice/NoticeReg")
	public String NoticeReg() throws Exception {
		return "/notice/NoticeReg";
	}
	@RequestMapping(value="notice/NoticeRegProc", method = RequestMethod.POST)
	public String NoticeRegProc(HttpServletRequest request, Model model) throws Exception {
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String user_id = request.getParameter("user_id");
		
		NoticeDTO nDTO = new NoticeDTO();
		nDTO.setTitle(title);
		nDTO.setContents(contents);
		nDTO.setUser_id(user_id);
		nDTO.setReg_id(user_id);
		nDTO.setChg_id(user_id);
		
		int result = noticeService.insertNoticeDTO(nDTO);
		
		String msg = "";
		String url = "";

		if (result != 0) {
			// 회원가입이 정상적으로 이루어진 상태
			msg = "게시글을 작성하였습니다.";
			url = "/user/NoticeList.do";
		} else {
			// 회원가입이 이루어지지 않은 상태
			msg = "게시글을 작성하지 못하였습니다.";
			url = "/notice/NoticeReg.do";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/alert";
	}
}
