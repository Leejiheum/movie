package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.CommonDTO;

@Mapper("CommonMapper")
public interface CommonMapper {
	public List<CommonDTO> getCinemaList(CommonDTO cDTO) throws Exception;
	public List<CommonDTO> getCinemaListDetail_1(CommonDTO chDTO) throws Exception;
}
