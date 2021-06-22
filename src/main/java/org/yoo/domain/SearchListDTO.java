package org.yoo.domain;

/*유선영 - 전체 검색 로직 구현*/

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
@AllArgsConstructor
@Data
public class SearchListDTO {
	private List<ServiceVO> list;
}
