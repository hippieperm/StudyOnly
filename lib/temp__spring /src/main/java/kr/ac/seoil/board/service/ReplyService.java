package kr.ac.seoil.board.service;

import java.util.List;

import kr.ac.seoil.board.vo.Criteria;
import kr.ac.seoil.board.vo.ReplyInfoVO;
import kr.ac.seoil.board.vo.ReplyPageVO;
import kr.ac.seoil.board.vo.ReplyVO;

public interface ReplyService {
	/**
	 * 댓글등록
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public int create(ReplyVO vo) throws Exception;
	
	/**
	 * 댓글조회
	 * @param rno
	 * @return
	 * @throws Exception
	 */
	public ReplyInfoVO get(Long rno) throws Exception;
	
	/**
	 * 댓글 수정
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public int modify(ReplyVO vo) throws Exception;
	
	/**
	 * 댓글 삭제
	 * @param rno
	 * @return
	 * @throws Exception
	 */
	public int remove(Long rno) throws Exception;
	
	/**
	 * 댓글목록
	 * @param cri
	 * @param bno
	 * @return
	 * @throws Exception
	 */
	public List<ReplyInfoVO> getList(Criteria cri, Long bno) throws Exception;
	
	
	public ReplyPageVO getListPage(Criteria cri, Long bno) throws Exception;
}













