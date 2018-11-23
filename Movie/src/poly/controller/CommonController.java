package poly.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
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
import org.springframework.web.bind.annotation.ResponseBody;

/*import com.mysql.fabric.xmlrpc.base.Array;*/

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import poly.dto.NoticeDTO;
import poly.dto.GradeDTO;
import poly.dto.SubmitDTO;
import poly.dto.UserDTO;
import poly.dto.CommonDTO;
import poly.service.INoticeService;
import poly.service.IGradeService;
import poly.service.ICommonService;
import poly.service.impl.GradeService;
import poly.util.CmmUtil;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.io.BufferedReader;
import java.io.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능 자바 서블릿 역할 수행
 */
@Controller
public class CommonController {
	private Logger log = Logger.getLogger(this.getClass());

	/*
	 * 비즈니스 로직(중요 로직을 수행하기 위해 사용되는 서비스를 메모리에 적재(싱글톤패턴 적용됨)
	 */
		@Resource(name = "GradeService")
		private IGradeService gradeService;
		@Resource(name = "CommonService")
		private ICommonService commonService;
	/*
	 * 함수명 위의 value="notice/NoticeList" => /notice/NoticeList.do로 호출되는 url은 무조건 이
	 * 함수가 실행된다. method=RequestMethod.GET => 폼 전송방법을 지정하는 것으로 get방식은 GET, post방식은
	 * POST이다. method => 기입안하면 GET, POST 모두 가능하나, 가급적 적어주는 것이 좋다.
	 */

	/*	@RequestMapping(value = "index")
		public String main(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception {
			return "/index";
		}*/
	@RequestMapping(value = "index")
	public String main(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception {


		return "/index";
	}
 	
	@RequestMapping(value = "cinema")
	public String series(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		return "/cinema";
	}
	
	@RequestMapping(value = "cienma/sidosearch", method=RequestMethod.POST)
	public @ResponseBody List<CommonDTO> getsidosearch(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		String SIDO =req.getParameter("sido");
		String SIGUNGU=req.getParameter("gugun");
		CommonDTO cDTO = new CommonDTO();
		cDTO.setSIDO(SIDO);
		if (SIGUNGU.equals("전체")) {
			cDTO.setSIGUNGU("");	
		} else {
			cDTO.setSIGUNGU(SIGUNGU);
		}
		List<CommonDTO> cList = new ArrayList<>();
		cList = commonService.getCinemaList(cDTO);
		/*model.addAttribute("cList", cList);*/
		return cList;
	}
	@RequestMapping(value = "cienma/sidosearchDetail", method=RequestMethod.POST)
	public  @ResponseBody List<CommonDTO> sidosearchDetail(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		String no =req.getParameter("no");
		System.out.println("no :" + no);
		CommonDTO cDTO = new CommonDTO();
		cDTO.setNO(no);
		List<CommonDTO> chList = new ArrayList<>();
		chList = commonService.getCinemaListDetail_1(cDTO);
		return chList;
	}

	@RequestMapping(value = "info")
	public String news(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		return "/info";
	}

	@RequestMapping(value = "infodetail")
	public String infodetail(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		return "/infodetail";
	}

	@RequestMapping(value = "DB_insert")
	public String DB_insert(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		return "/DB_insert";
	}

	@RequestMapping(value = "ranking")
	public String ranking(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		return "/ranking";
	}

	@RequestMapping(value = "grade")
	public String grade(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		List<GradeDTO> gList = gradeService.getGradeList();
		model.addAttribute("gList", gList);
		return "/grade";
	}
	@RequestMapping(value = "viewpage")
	public String viewpage(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception {
		return "/viewpage";
	}
}
