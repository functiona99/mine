package org.yoo.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;
import org.yoo.domain.Criteria;
import org.yoo.domain.SearchListDTO;
import org.yoo.domain.ServiceVO;

/*유선영 - 전체 검색 로직 구현*/

public interface MainService {
	public List<ServiceVO> getList();
	public List<ServiceVO> getList(Criteria cri);
	public SearchListDTO findByKeyword1(@RequestParam("cri") Criteria cri);
	public SearchListDTO findByKeyword2(@RequestParam("cri") Criteria cri);
	public SearchListDTO findByKeyword3(@RequestParam("cri") Criteria cri);
	public SearchListDTO findByKeyword4(@RequestParam("cri") Criteria cri);
	public SearchListDTO findByKeyword5(@RequestParam("cri") Criteria cri);
	public SearchListDTO findByKeyword6(@RequestParam("cri") Criteria cri);
	public SearchListDTO findByKeyword7(@RequestParam("cri") Criteria cri);
}
