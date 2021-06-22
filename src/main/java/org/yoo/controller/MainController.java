package org.yoo.controller;


import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.yoo.domain.Criteria;
import org.yoo.domain.SearchListDTO;
import org.yoo.service.MainService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/*유선영 - 전체 검색 로직 구현*/

@RequiredArgsConstructor
@Controller
@RequestMapping("/*")
@Log4j
public class MainController {
	private final MainService mainService;
	
		@GetMapping(value="/search")
		public void search() {
		log.info("search");
		}
		
		/*
		 * @RequestMapping(value="/search", method = {RequestMethod.GET,
		 * RequestMethod.POST}) public void search() { log.info("search"); }
		 */
		
	
	  @GetMapping(value = "/search/type/{type}/keyword/{keyword}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	  public ResponseEntity<SearchListDTO> get1(@PathVariable String type, @PathVariable String keyword) 
	  {  /* return mainService.findByKeyword(keyword); */
		  Criteria cri = new Criteria();
		  cri.setKeyword(keyword);
		  cri.setType(type);
		  log.info(cri.getTypeArr()[0]);
		  return new ResponseEntity<>(mainService.findByKeyword1(cri), HttpStatus.OK);
	  	}
	 
	  @GetMapping(value = "/search/tag/{tagArr}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	  public ResponseEntity<SearchListDTO> get2(@PathVariable String[] tagArr) 
	  {  /* return mainService.findByKeyword(keyword); */
		  Criteria cri = new Criteria();
		  cri.setTagArr(tagArr);
		  log.info(tagArr);
		  return new ResponseEntity<>(mainService.findByKeyword2(cri), HttpStatus.OK);
	  	}
	  
	  @GetMapping(value = "/search/location/{location}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	  public ResponseEntity<SearchListDTO> get3(@PathVariable String location) 
	  {  /* return mainService.findByKeyword(keyword); */
		  Criteria cri = new Criteria();
		  cri.setLocation(location);
		  log.info(location);
		  return new ResponseEntity<>(mainService.findByKeyword3(cri), HttpStatus.OK);
	  	}
	  //tag+location
	  @GetMapping(value = "/search/location/{location}/tag/{tagArr}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	  public ResponseEntity<SearchListDTO> get4(@PathVariable String location,@PathVariable String[] tagArr) 
	  {  /* return mainService.findByKeyword(keyword); */
		  Criteria cri = new Criteria();
		  cri.setLocation(location);
		  cri.setTagArr(tagArr);
		  log.info(location+tagArr);
		  return new ResponseEntity<>(mainService.findByKeyword4(cri), HttpStatus.OK);
	  	}
	  //title+tag
	  @GetMapping(value = "/search/type/{type}/keyword/{keyword}/tag/{tagArr}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	  public ResponseEntity<SearchListDTO> get5(@PathVariable String type, @PathVariable String keyword, @PathVariable String[] tagArr) 
	  {  /* return mainService.findByKeyword(keyword); */
		  Criteria cri = new Criteria();
		  cri.setType(type);
		  cri.setKeyword(keyword);
		  cri.setTagArr(tagArr);
		  log.info(type+keyword+tagArr);
		  return new ResponseEntity<>(mainService.findByKeyword5(cri), HttpStatus.OK);
	  	}
	  //title+location
	  @GetMapping(value = "/search/type/{type}/keyword/{keyword}/location/{location}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	  public ResponseEntity<SearchListDTO> get6(@PathVariable String type, @PathVariable String keyword, @PathVariable String location) 
	  {  /* return mainService.findByKeyword(keyword); */
		  Criteria cri = new Criteria();
		  cri.setType(type);
		  cri.setKeyword(keyword);
		  cri.setLocation(location);
		  log.info(type+keyword+location);
		  return new ResponseEntity<>(mainService.findByKeyword6(cri), HttpStatus.OK);
	  	}
	  
	  @GetMapping(value = "/search/type/{type}/keyword/{keyword}/location/{location}/tag/{tagArr}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	  public ResponseEntity<SearchListDTO> get7(@PathVariable String type, @PathVariable String keyword, @PathVariable String location, @PathVariable String[] tagArr) 
	  {  /* return mainService.findByKeyword(keyword); */
		  Criteria cri = new Criteria();
		  cri.setType(type);
		  cri.setKeyword(keyword);
		  cri.setLocation(location);
		  cri.setTagArr(tagArr);
		  log.info(type+keyword+location+tagArr);
		  return new ResponseEntity<>(mainService.findByKeyword7(cri), HttpStatus.OK);
	  	}
	  
	  
	  
	  
	  
		@GetMapping(value="/view")
		public void view(Model model) {
			
		}
		
		@GetMapping(value="/ServiceView")
		public void ServiceView(Model model) {
			
		}
		
		@GetMapping(value="/nav")
		public void nav(Model model) {
			
		}
		
		@GetMapping(value="/index")
		public void index(Model model) {
			
		}
}
