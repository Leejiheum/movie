package poly.service;

import java.util.List;

import poly.dto.UserDTO;

public interface IUserService {
	public int insertUserDTO(UserDTO uDTO) throws Exception;
	public List<UserDTO> getUserList() throws Exception;
	public UserDTO getUserDetail(String userNo) throws Exception;
	public int updateUser(UserDTO uDTO) throws Exception;
	public UserDTO getUserLogin(UserDTO uDTO) throws Exception;
	public String getIdChk (UserDTO uDTO) throws Exception;
	public String getId (UserDTO uDTO) throws Exception;
	public String getPw (UserDTO uDTO) throws Exception;
	public List<UserDTO> getSearchList(UserDTO uDTO) throws Exception;
}
