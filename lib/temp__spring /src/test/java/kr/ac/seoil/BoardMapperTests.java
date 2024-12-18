package kr.ac.seoil;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.seoil.board.mapper.BoardMapper;
import kr.ac.seoil.board.vo.BoardInfoVO;
import kr.ac.seoil.board.vo.BoardVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {

	@Autowired
	private BoardMapper boardMapper;
	
	@Test
	public void testGetList() throws Exception {
		boardMapper.selectList().forEach(board -> log.info(board));
	}
	
	@Test
	public void testInsert() throws Exception {
		BoardVO vo = new BoardVO();
		vo.setTitle("Mapper Test1");
		vo.setContent("Mapper Test1");
		vo.setUserId("user01");
		
		int ret = boardMapper.insert(vo);
		log.info("+++++++++++++++++++++++++++");
		log.info("reg = " + ret);
		log.info("bno = " + vo.getBno());
	}
	
	@Test
	public void testInsertSelectKey() throws Exception {
		BoardVO vo = new BoardVO();
		vo.setTitle("Mapper Test1");
		vo.setContent("Mapper Test1");
		vo.setUserId("user01");
		
		int ret = boardMapper.insertSelectKey(vo);
		log.info("+++++++++++++++++++++++++++");
		log.info("reg = " + ret);
		log.info("bno = " + vo.getBno());
	}
	
	@Test
	public void testSelectInfo() throws Exception {
		BoardInfoVO vo = boardMapper.selectInfo(21L);
		
		log.info(vo);
	}
	
	@Test
	public void testDelete() throws Exception {
		int ret = boardMapper.delete(27L);
	}
	
	@Test
	public void testUpdate() throws Exception {
		BoardVO vo = new BoardVO();
		vo.setBno(26L);
		vo.setTitle("수정 테스트");
		vo.setContent("수정 테스트");
		int ret = boardMapper.update(vo);
		
		log.info("################################## : " + ret);
	}

}























