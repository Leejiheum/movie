package poly.service;

import java.util.List;

import poly.dto.GradeDTO;

public interface IGradeService {
	public List<GradeDTO> getGradeList() throws Exception;
}
