package org.yoo.sample;



import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.yoo.domain.Criteria;
import org.yoo.domain.ServiceVO;
import org.yoo.mapper.MainMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MainMapperTests {

	@Setter(onMethod = @__({@Autowired}))
	private MainMapper mapper;
	
	@Test
	public void testSearch() {
		
		Criteria cri = new Criteria();
		cri.setKeyword("1");
		cri.setType("Ti");
		
		List<ServiceVO> list = mapper.getListWithPaging(cri);
		
		list.forEach(service -> log.info(service));
	}
}
