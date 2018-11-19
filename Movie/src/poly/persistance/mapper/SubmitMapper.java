package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.SubmitDTO;

@Mapper("SubmitMapper")
public interface SubmitMapper {
	public int insertSubmitDTO(SubmitDTO SubmitDTO) throws Exception;

}
