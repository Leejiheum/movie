package poly.service;

import java.util.List;

import poly.dto.NoticeDTO;

public interface INoticeService {
	public List<NoticeDTO> getNoticeList() throws Exception;
	public NoticeDTO getNoticeDetail(String Notice_seq) throws Exception;
	public int deleteNoticeDTO(String Notice_seq) throws Exception;
	public int updateNotice(NoticeDTO nDTO) throws Exception;
	public int insertNoticeDTO(NoticeDTO nDTO) throws Exception;
}
