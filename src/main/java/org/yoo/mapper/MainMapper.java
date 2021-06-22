package org.yoo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;
import org.yoo.domain.Criteria;
import org.yoo.domain.ServiceVO;

/*유선영 - 전체 검색 로직 구현*/

public interface MainMapper {
	public List<ServiceVO> getList();
	public List<ServiceVO> getListWithPaging(Criteria cri);
	public int getTotalCount(Criteria cri);
	public List<ServiceVO> search(@RequestParam("cri")Criteria cri);
}
