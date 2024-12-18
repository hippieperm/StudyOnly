package kr.ac.seoil.board.mapper;

import java.util.List;

import kr.ac.seoil.board.vo.BoardInfoVO;
import kr.ac.seoil.board.vo.BoardListVO;
import kr.ac.seoil.board.vo.BoardVO;
import kr.ac.seoil.board.vo.Criteria;

public interface BoardMapper {

	/**
	 * 게시물 목록 (페이징, 조건없음)
	 * @return
	 * @throws Exception
	 */
	public List<BoardListVO> selectList() throws Exception;
	
	/**
	 * 게시물 목록 (페이징)
	 * @param cri
	 * @return
	 * @throws Exception
	 */
	public List<BoardListVO> selectListWithPaging(Criteria cri) throws Exception;

	/**
	 * 게시물 전체 갯수
	 * @param cri
	 * @return
	 * @throws Exception
	 */
	public int selectTotalCount(Criteria cri) throws Exception;
	
	/**
	 * 게시물 등록 (bno 리턴없음)
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public Integer insert(BoardVO vo) throws Exception;
	
	/**
	 * 게시물 등록 (bno 리턴있음)
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public int insertSelectKey(BoardVO vo) throws Exception;
	
	/**
	 * 게시물 상세
	 * @param bno
	 * @return
	 * @throws Exception
	 */
	public BoardInfoVO selectInfo(long bno) throws Exception;
	
	/**
	 * 게시물 삭제
	 * @param bno
	 * @return
	 * @throws Exception
	 */
	public int delete(long bno) throws Exception;
	
	/**
	 * 게시물 수정
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public int update(BoardVO vo) throws Exception;
}

















