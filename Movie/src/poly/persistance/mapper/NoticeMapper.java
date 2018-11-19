package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.NoticeDTO;

@Mapper("NoticeMapper")
public interface NoticeMapper {
	public List<NoticeDTO> getNoticeList() throws Exception; // List 인터페이스 타입으로 UserDTO를
	public NoticeDTO getNoticeDetail(String Notice_seq) throws Exception;
	public int deleteNoticeDTO(String Notice_seq) throws Exception; //
	public int updateNotice(NoticeDTO nDTO) throws Exception;
	public int insertNoticeDTO(NoticeDTO nDTO) throws Exception;
}
