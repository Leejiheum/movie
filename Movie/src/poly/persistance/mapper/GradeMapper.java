package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.GradeDTO;

@Mapper("GradeMapper")
public interface GradeMapper {
	public List<GradeDTO> getGradeList() throws Exception; // List 인터페이스 타입으로 UserDTO를
}
