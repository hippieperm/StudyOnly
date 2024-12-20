package kr.ac.seoil.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.seoil.board.mapper.BoardMapper;
import kr.ac.seoil.board.service.BoardService;
import kr.ac.seoil.board.vo.BoardInfoVO;
import kr.ac.seoil.board.vo.BoardListVO;
import kr.ac.seoil.board.vo.BoardVO;
import kr.ac.seoil.board.vo.Criteria;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardListVO> getList() throws Exception {
		return boardMapper.selectList();
	}
	
	@Override
	public List<BoardListVO> getList(Criteria cri) throws Exception {
		return boardMapper.selectListWithPaging(cri);
	}
	
	@Override
	public int getTotalCount(Criteria cri) throws Exception {
		return boardMapper.selectTotalCount(cri);
	}
	
	@Override
	public Integer create(BoardVO vo) throws Exception {
		return boardMapper.insert(vo);
	}
	
	@Override
	public int createGetKey(BoardVO vo) throws Exception {
		return boardMapper.insertSelectKey(vo);
	}
	
	@Override
	public BoardInfoVO getInfo(long bno) throws Exception {
		return boardMapper.selectInfo(bno);
	}
	
	@Override
	public int remove(long bno) throws Exception {
		return boardMapper.delete(bno);
	}
	
	@Override
	public int modify(BoardVO vo) throws Exception {
		return boardMapper.update(vo);
	}
}















