package kr.ac.seoil.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.seoil.board.mapper.ReplyMapper;
import kr.ac.seoil.board.service.ReplyService;
import kr.ac.seoil.board.vo.Criteria;
import kr.ac.seoil.board.vo.ReplyInfoVO;
import kr.ac.seoil.board.vo.ReplyPageVO;
import kr.ac.seoil.board.vo.ReplyVO;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private ReplyMapper replyMapper;
	
	@Override
	public int create(ReplyVO vo) throws Exception {
		log.info("create.........." + vo);
		return replyMapper.insert(vo);
	}
	
	@Override
	public ReplyInfoVO get(Long rno) throws Exception {
		log.info("get........." + rno);
		return replyMapper.select(rno);
	}
	
	@Override
	public int modify(ReplyVO vo) throws Exception {
		log.info("modify..........." + vo);
		return replyMapper.update(vo);
	}
	
	@Override
	public int remove(Long rno) throws Exception {
		log.info("remove....." + rno);
		return replyMapper.delete(rno);
	}
	
	@Override
	public List<ReplyInfoVO> getList(Criteria cri, Long bno) throws Exception {
		log.info("........get Reply List of a Board : " + bno);
		return replyMapper.selectList(cri, bno);
	}
	
	@Override
	public ReplyPageVO getListPage(Criteria cri, Long bno) throws Exception {
		return new ReplyPageVO(
				replyMapper.selectCountByBno(bno)
				, replyMapper.selectList(cri, bno));
	}
}


















