package kr.ac.seoil.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.seoil.board.vo.Criteria;
import kr.ac.seoil.board.vo.ReplyInfoVO;
import kr.ac.seoil.board.vo.ReplyVO;

public interface ReplyMapper {

	/**
	 * 댓글등록
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public int insert(ReplyVO vo) throws Exception;
	
	/**
	 * 댓글 조회
	 * @param rno
	 * @return
	 * @throws Exception
	 */
	public ReplyInfoVO select(Long rno) throws Exception;
	
	/**
	 * 댓글삭제
	 * @param rno
	 * @return
	 * @throws Exception
	 */
	public int delete(Long rno) throws Exception;
	
	/**
	 * 댓글수정
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public int update(ReplyVO vo) throws Exception;
	
	/**
	 * 댓글목록
	 * @param cri
	 * @param bno
	 * @return
	 * @throws Exception
	 */
	public List<ReplyInfoVO> selectList(@Param("cri") Criteria cri, @Param("bno") Long bno) throws Exception;
	
	/**
	 * 댓글 갯수
	 * @param bno
	 * @return
	 * @throws Exception
	 */
	public int selectCountByBno(Long bno) throws Exception;
}













