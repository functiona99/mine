package org.yoo.domain;

import lombok.Data;

/*유선영 - 전체 검색 로직 구현*/

@Data
public class ServiceVO {
	private int sno;
	private String title;
	private String content;
	private String image;
	private String category;
	private int serviceTime;
	private String location;
	private String artistID;

}
