package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.GradeDTO;
import poly.persistance.mapper.GradeMapper;
import poly.service.IGradeService;

@Service("GradeService")
public class GradeService implements IGradeService {

	@Resource(name = "GradeMapper")
	private GradeMapper gradeMapper;
	
	@Override
	public List<GradeDTO> getGradeList() throws Exception {
		return gradeMapper.getGradeList();
	}


}