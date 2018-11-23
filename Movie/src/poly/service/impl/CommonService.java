 package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.CommonDTO;
import poly.persistance.mapper.CommonMapper;
import poly.service.ICommonService;

@Service("CommonService")
public class CommonService implements ICommonService {

	@Resource(name = "CommonMapper")
	private CommonMapper commonMapper;

	@Override
	public List<CommonDTO> getCinemaList(CommonDTO cDTO) throws Exception {
		return commonMapper.getCinemaList(cDTO);
	}
	@Override
	public List<CommonDTO> getCinemaListDetail_1(CommonDTO chDTO) throws Exception {
		return commonMapper.getCinemaListDetail_1(chDTO);
	}

}
