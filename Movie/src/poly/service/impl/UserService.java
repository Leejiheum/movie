 package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.UserDTO;
import poly.persistance.mapper.UserMapper;
import poly.service.IUserService;

@Service("UserService")
public class UserService implements IUserService {

	@Resource(name = "UserMapper")
	private UserMapper userMapper;

	@Override
	public int insertUserDTO(UserDTO uDTO) throws Exception {
		return userMapper.insertUserDTO(uDTO);
	}

	@Override
	public List<UserDTO> getUserList() throws Exception {
		return userMapper.getUserList();
	}

	@Override
	public UserDTO getUserDetail(String userNo) throws Exception {

		return userMapper.getUserDetail(userNo);
	}
	
	@Override
	public int updateUser(UserDTO uDTO) throws Exception {
		return userMapper.updateUser(uDTO);
	}

	@Override
	public UserDTO getUserLogin(UserDTO uDTO) throws Exception {
		return userMapper.getUserLogin(uDTO);
	}

	@Override
	public String getIdChk(UserDTO uDTO) throws Exception {
		return userMapper.getIdChk(uDTO);
	}
	@Override
	public String getId(UserDTO uDTO) throws Exception {
		return userMapper.getId(uDTO);
	}
	@Override
	public String getPw(UserDTO uDTO) throws Exception {
		return userMapper.getPw(uDTO);
	}

	@Override
	public List<UserDTO> getSearchList(UserDTO uDTO) throws Exception {
		return userMapper.getSearchList(uDTO);
	}

}
