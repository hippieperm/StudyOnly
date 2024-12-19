package kr.ac.seoil.sample;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.seoil.sample.vo.SampleVO;
import kr.ac.seoil.sample.vo.Ticket;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/sample")
@Log4j
public class SampleController {

	@GetMapping(value="/getText", produces="text/plain; charset=UTF-8")
	public String getText() throws Exception {
		log.info("MIME TYPE:" + MediaType.TEXT_PLAIN_VALUE);
		return "안녕하세요";
	}
	
	@GetMapping(value="/getSample"
			, produces= {MediaType.APPLICATION_JSON_UTF8_VALUE
					, MediaType.APPLICATION_XML_VALUE})
	public SampleVO getSample() throws Exception {
		return new SampleVO(112, "스타", "로드");
	}
	
	@GetMapping(value="/getSample2")
	public SampleVO getSample2() throws Exception {
		return new SampleVO(113, "로켓", "라쿤");
	}
	
	@GetMapping(value="/getList")
	public List<SampleVO> getList() throws Exception {
		return IntStream.range(1, 10)
				.mapToObj(i -> new SampleVO(i, i+"First", i+"Last")).collect(Collectors.toList());
	}
	
	@GetMapping(value="/getMap")
	public Map<String, SampleVO> getMap() throws Exception {
		Map<String, SampleVO> map = new HashMap<>();
		map.put("First", new SampleVO(111, "그루트", "주니어"));
		return map;
	}
	
	@GetMapping(value="/check", params= {"height", "weight"})
	public ResponseEntity<SampleVO> check(Double height, Double weight) throws Exception {
		SampleVO vo = new SampleVO(0, "" + height, "" + weight);
		
		ResponseEntity<SampleVO> result = null;
		if (height < 150) {
			result = ResponseEntity.status(HttpStatus.BAD_GATEWAY).body(vo);
		} else {
			result = ResponseEntity.status(HttpStatus.OK).body(vo);
		}
		
		return result;
	}
	
	@GetMapping("/product/{cat}/{pid}")
	public String[] getPath(
			@PathVariable("cat") String cat
			, @PathVariable("pid") Integer pid) throws Exception {
		return new String[] {"category:" + cat, "productId:" + pid};
	}
	
	@PostMapping("/ticket")
	public Ticket convert(@RequestBody Ticket ticket) throws Exception {
		log.info("convert..............ticket" + ticket);
		return ticket;
	}
	
	
	
}
















