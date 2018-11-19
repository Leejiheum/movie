package poly.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.persistance.mapper.SubmitMapper;
import poly.service.ISubmitService;
import poly.dto.SubmitDTO;

@Service("SubmitService")
public class SubmitService implements ISubmitService {
	
	@Resource(name="SubmitMapper")
	private SubmitMapper submitmapper;
	
	@Override
	public int insertSubmitDTO(SubmitDTO SubmitDTO) throws Exception {
		return submitmapper.insertSubmitDTO(SubmitDTO);
	}
	
}
