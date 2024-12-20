package kr.ac.seoil;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.seoil.board.mapper.ReplyMapper;
import kr.ac.seoil.board.vo.Criteria;
import kr.ac.seoil.board.vo.ReplyInfoVO;
import kr.ac.seoil.board.vo.ReplyVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {

	private Long[] bnoArr = {42L, 188L, 192L, 206L, 212L};
	
	@Autowired
	private ReplyMapper replyMapper;
	
	@Test
	public void testCreate() throws Exception {
		IntStream.rangeClosed(1, 10).forEach(i -> {
			ReplyVO vo = new ReplyVO();
			
			vo.setBno(bnoArr[i%5]);
			vo.setReply("댓글 테스트 " + i);
			vo.setUserId("user01");
			
			try {
				replyMapper.insert(vo);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		});
	}
	
	@Test
	public void testSelect() throws Exception {
		Long rno = 5L;
		ReplyInfoVO vo = replyMapper.select(rno);
		
		log.info("==========================" + vo);
	}
	
	@Test
	public void testDelete() throws Exception {
		Long rno = 1L;
		int ret = replyMapper.delete(rno);
		log.info("##########################:" + ret);
	}
	
	@Test
	public void testUpdate() throws Exception {
		Long rno = 10L;
		
		ReplyVO vo = new ReplyVO();
		vo.setRno(rno);
		vo.setReply("댓글 수정 테스트");
		
		int ret = replyMapper.update(vo);
		
		log.info("$$$$$$$$$$$$$$$$$$$$$$$$:" + ret);
	}
	
	@Test
	public void testList() throws Exception {
		Criteria cri = new Criteria();
		List<ReplyInfoVO> replies = replyMapper.selectList(cri, 42L);
		
		replies.forEach(reply -> log.info(reply));
	}
}

















