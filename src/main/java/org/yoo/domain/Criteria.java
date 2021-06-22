package org.yoo.domain;

import lombok.Data;

/*유선영 - 전체 검색 로직 구현*/

@Data
public class Criteria {
	private int pageNum;
	private int amount;
	private String type;
	private String keyword;
	private String location;
	private String tag;
	private String[] tagArr;
	
	
	
	public String[] getTypeArr() { return type == null? new String[] {} :
	type.split(""); }
	 
		
//	public String[] getTagArr() { return tag == null? new String[] {} :
//	tag.split(""); }
		 
	 
}