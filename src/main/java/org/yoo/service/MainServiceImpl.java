package org.yoo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.yoo.domain.Criteria;
import org.yoo.domain.SearchListDTO;
import org.yoo.domain.ServiceVO;
import org.yoo.mapper.MainMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*유선영 - 전체 검색 로직 구현*/

@Service
@Log4j
@AllArgsConstructor
public class MainServiceImpl implements MainService{
	@Setter(onMethod_=@Autowired)
	private MainMapper mapper;
	
	@Override
	public List<ServiceVO> getList(){
		log.info("getList:");
		return mapper.getList();
	}
	
	@Override
	public List<ServiceVO> getList(Criteria cri){
		log.info(cri);
		return mapper.getListWithPaging(cri);
	}

	//키워드 찾기
	@Transactional
	@Override
	public SearchListDTO findByKeyword1(Criteria cri) {
		log.info("S(type/keyword): "+cri.getKeyword());
		return new SearchListDTO(mapper.search(cri));
	}
	
	@Transactional
	@Override
	public SearchListDTO findByKeyword2(Criteria cri) {
		log.info("S(tag): "+cri.getTagArr());
		return new SearchListDTO(mapper.search(cri));
	}
	
	@Transactional
	@Override
	public SearchListDTO findByKeyword3(Criteria cri) {
		log.info("S(location): "+cri.getLocation());
		return new SearchListDTO(mapper.search(cri));
	}
	
	@Transactional
	@Override
	public SearchListDTO findByKeyword4(Criteria cri) {
		log.info("S(location/tag): "+cri.getLocation()+cri.getTagArr());
		return new SearchListDTO(mapper.search(cri));
	}
	
	@Transactional
	@Override
	public SearchListDTO findByKeyword5(Criteria cri) {
		log.info("S(type/keyword/tag): "+cri.getType()+cri.getKeyword()+cri.getTagArr());
		return new SearchListDTO(mapper.search(cri));
	}
	
	@Transactional
	@Override
	public SearchListDTO findByKeyword6(Criteria cri) {
		log.info("S(type/keyword/location): "+cri.getType()+cri.getKeyword()+cri.getLocation());
		return new SearchListDTO(mapper.search(cri));
	}
	
	@Override
	@Transactional
	public SearchListDTO findByKeyword7(Criteria cri) {
		log.info("S(type/keyword/location/tag): "+cri.getType()+cri.getKeyword()+cri.getLocation()+cri.getTagArr());
		return new SearchListDTO(mapper.search(cri));
	}

	
}
