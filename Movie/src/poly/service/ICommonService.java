package poly.service;

import java.util.List;

import poly.dto.CommonDTO;

public interface ICommonService {
	public List<CommonDTO> getCinemaList(CommonDTO cDTO) throws Exception;
	public List<CommonDTO> getCinemaListDetail_1(CommonDTO chDTO) throws Exception;
}
