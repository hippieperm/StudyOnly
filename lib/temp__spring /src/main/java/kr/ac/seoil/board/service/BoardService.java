package kr.ac.seoil.board.service;

import java.util.List;
import kr.ac.seoil.board.vo.BoardInfoVO;
import kr.ac.seoil.board.vo.BoardListVO;
import kr.ac.seoil.board.vo.BoardVO;
import kr.ac.seoil.board.vo.Criteria;

public interface BoardService {

  /**
   * 게시물 목록 (페이징, 조건없음)
   * 
   * @return
   * @throws Exception
   */
  public List<BoardListVO> getList() throws Exception;

  /**
   * 게시물 목록 (페이징)
   * 
   * @param cri
   * @return
   * @throws Exception
   */
  public List<BoardListVO> getList(Criteria cri) throws Exception;

  /**
   * 게시물 총 갯수
   * 
   * @param cri
   * @return
   * @throws Exception
   */
  public int getTotalCount(Criteria cri) throws Exception;

  /**
   * 게시물 등록 (bno 리턴없음)
   * 
   * @param vo
   * @return
   * @throws Exception
   */
  public Integer create(BoardVO vo) throws Exception;

  /**
   * 게시물 등록 (bno 리턴있음)
   * 
   * @param vo
   * @return
   * @throws Exception
   */
  public int createGetKey(BoardVO vo) throws Exception;

  /**
   * 게시물 상세
   * 
   * @param bno
   * @return
   * @throws Exception
   */
  public BoardInfoVO getInfo(long bno) throws Exception;

  /**
   * 게시물 삭제
   * 
   * @param bno
   * @return
   * @throws Exception
   */
  public int remove(long bno) throws Exception;

  /**
   * 게시물 수정
   * 
   * @param vo
   * @return
   * @throws Exception
   */
  public int modify(BoardVO vo) throws Exception;

}


