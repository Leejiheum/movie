package poly.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.JSONArray; //JSON배열 사용
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;

import poly.dto.SubmitDTO;
import poly.service.ISubmitService;
import poly.util.CmmUtil;



@Controller
public class SubmitController {
	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "SubmitService")
	private ISubmitService SubmitService;
	
	@RequestMapping(value="Submit")
	public String Submit(HttpServletRequest req, HttpServletResponse res, Model model, HttpSession session) throws Exception{
		int startCount = 0;
		try {
		while (true) {
			System.out.println("StartCount : " + startCount);
			StringBuilder urlBuilder = new StringBuilder("http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp?collection=kmdb_new&nation=대한민국"
					+"&ServiceKey=XPYU70SA5ZG24KUG00VP"
					+"&listCount=1"
					+"&startCount=" + startCount);
			URL url = new URL(urlBuilder.toString()); 
			HttpURLConnection conn = (HttpURLConnection) url.openConnection(); 
			conn.setRequestMethod("GET"); 
			conn.setRequestProperty("Content-type", "application/json"); 
		
			BufferedReader rd; 
			if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) { 
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream())); 
			} else { 
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream())); 
			
			} 
			String result = "";
			String line; 
			while ((line = rd.readLine()) != null) { 
				result = result.concat(line);
			}
			rd.close(); 
			conn.disconnect(); 
			JSONParser parser = new JSONParser();
			JSONObject movieinfo = (JSONObject)parser.parse(result);
			JSONArray data_arry = (JSONArray)movieinfo.get("Data");
			JSONObject data_obj = (JSONObject)data_arry.get(0);
			JSONArray  result_arry= (JSONArray) data_obj.get("Result");
			JSONObject result_obj = (JSONObject)result_arry.get(0);
			for (int i = 0 ; i < 1; i++) {
				String docid = CmmUtil.nvl(result_obj.get("DOCID").toString());
				String movieId = CmmUtil.nvl(result_obj.get("movieId").toString());
				String movieSeq	 = CmmUtil.nvl(result_obj.get("movieSeq").toString());
				String title	=CmmUtil.nvl(result_obj.get("title").toString());
				String titleEng	=CmmUtil.nvl(result_obj.get("titleEng").toString());
				String nation	=CmmUtil.nvl(result_obj.get("nation").toString());
				String company	=CmmUtil.nvl(result_obj.get("company").toString());
				String prodYear	=CmmUtil.nvl(result_obj.get("prodYear").toString());
				String plot	=CmmUtil.nvl(result_obj.get("plot").toString());
				String runtime	=CmmUtil.nvl(result_obj.get("runtime").toString());
				String genre	=CmmUtil.nvl(result_obj.get("genre").toString());
				String kmdbUrl	=CmmUtil.nvl(result_obj.get("kmdbUrl").toString());
				String type	=CmmUtil.nvl(result_obj.get("type").toString());
				String keywords	=CmmUtil.nvl(result_obj.get("keywords").toString());
				String soundtrack	=CmmUtil.nvl(result_obj.get("soundtrack").toString());
				
				JSONArray rating_arry=(JSONArray)result_obj.get("rating");
				JSONObject rating_obj=(JSONObject)rating_arry.get(0);
				String releaseDate	=CmmUtil.nvl(rating_obj.get("releaseDate").toString());
				String	ratingGrade	=CmmUtil.nvl(rating_obj.get("ratingGrade").toString());
				
				JSONArray vod_arry=(JSONArray)result_obj.get("vod");
				JSONObject vod_obj=(JSONObject)vod_arry.get(0);
				String	vodClass	=CmmUtil.nvl(vod_obj.get("vodClass").toString());
				String	vodUrl	=CmmUtil.nvl(vod_obj.get("vodUrl").toString());
				
				JSONArray director_arry=(JSONArray)result_obj.get("director");
				JSONObject director_obj=(JSONObject)director_arry.get(0);
				String	directorNm	=CmmUtil.nvl(director_obj.get("directorNm").toString());
				String	directorId	=CmmUtil.nvl(director_obj.get("directorId").toString());
				
				JSONArray staff_arry=(JSONArray)result_obj.get("staff");
				JSONObject staff_obj=(JSONObject)staff_arry.get(0);
				String	staffNm	=CmmUtil.nvl(staff_obj.get("staffNm").toString());
				String	staffRoleGroup	=CmmUtil.nvl(staff_obj.get("staffRoleGroup").toString());
				String	staffRole	=CmmUtil.nvl(staff_obj.get("staffRole").toString());
				String	staffId	=CmmUtil.nvl(staff_obj.get("staffId").toString());
				
				JSONArray actor_arry=(JSONArray)result_obj.get("actor");
				JSONObject actor_obj=(JSONObject)actor_arry.get(0);
				String	actorNm	=CmmUtil.nvl(actor_obj.get("actorNm").toString());
				String	actorId	=CmmUtil.nvl(actor_obj.get("actorId").toString());
				
				
				SubmitDTO SubmitDTO = new SubmitDTO();
				SubmitDTO.setDocid(docid);
				SubmitDTO.setMovieId(movieId);
				SubmitDTO.setMovieSeq(movieSeq);
				SubmitDTO.setTitle(title);
				SubmitDTO.setTitleEng(titleEng);
				SubmitDTO.setDirectorNm(directorNm);
				SubmitDTO.setDirectorId(directorId);
				SubmitDTO.setActorNm(actorNm);
				SubmitDTO.setActorId(actorId);
				SubmitDTO.setNation(nation);
				SubmitDTO.setCompany(company);
				SubmitDTO.setProdYear(prodYear);
				SubmitDTO.setPlot(plot);
				SubmitDTO.setRuntime(runtime);
				SubmitDTO.setGenre(genre);
				SubmitDTO.setKmdbUrl(kmdbUrl);
				SubmitDTO.setType(type);
				SubmitDTO.setRatingGrade(ratingGrade);
				SubmitDTO.setReleaseDate(releaseDate);
				SubmitDTO.setKeywords(keywords);
				SubmitDTO.setStaffNm(staffNm);
				SubmitDTO.setStaffRoleGroup(staffRoleGroup);
				SubmitDTO.setStaffRole(staffRole);
				SubmitDTO.setStaffId(staffId);
				SubmitDTO.setVodClass(vodClass);
				SubmitDTO.setVodUrl(vodUrl);
				SubmitDTO.setSoundtrack(soundtrack);
			}
    		startCount++;
				if (startCount > 22838) {
					break;
				}
			}
		} catch(Exception e) {
            System.out.println("error : " + e.getMessage());
         }
		log.info(this.getClass() + " insertSido End!!!");
		return "/alert"; 
	}
}
