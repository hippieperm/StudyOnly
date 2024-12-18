package kr.ac.seoil;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.seoil.board.service.BoardService;
import kr.ac.seoil.board.vo.BoardVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	@Autowired
	private BoardService boardService;
	
	@Test
	public void testExist() {
		log.info(boardService);
		assertNotNull(boardService);
	}
	
	@Test
	public void testCreate() throws Exception {
		BoardVO vo = new BoardVO();
		vo.setTitle("Service레벨 테스트");
		vo.setContent("Service레벨 테스트 내용");
		vo.setUserId("user01");
		
		boardService.create(vo);
		log.info("################### 생성된 게시물 번호 : " + vo.getBno());
	}
	
	@Test
	public void testCreateKey() throws Exception {
		BoardVO vo = new BoardVO();
		vo.setTitle("Service레벨 테스트");
		vo.setContent("Service레벨 테스트 내용");
		vo.setUserId("user01");
		
		boardService.createGetKey(vo);
		log.info("################### 생성된 게시물 번호 : " + vo.getBno());
	}
	
	@Test
	public void testGetList() throws Exception {
		boardService.getList();
	}
	
	@Test
	public void testGetInfo() throws Exception {
		boardService.getInfo(41L);
	}
	
	@Test
	public void testRemove() throws Exception {
		boardService.remove(41L);
	}
	
	@Test
	public void testModify() throws Exception {
		BoardVO vo = new BoardVO();
		vo.setBno(42L);
		vo.setTitle("Service레벨 수정테스트");
		vo.setContent("Service레벨 수정테스트 내용");
		vo.setUserId("user01");
		
		boardService.modify(vo);
	}
}
















