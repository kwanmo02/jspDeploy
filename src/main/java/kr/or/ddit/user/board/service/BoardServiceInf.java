package kr.or.ddit.user.board.service;

import java.util.List;

import kr.or.ddit.user.board.model.BoardVo;

public interface BoardServiceInf {
	
	/**
	 * 
	* Method : getBoardList
	* 최초작성일 : 2018. 7. 5.
	* 작성자 : PC21
	* 변경이력 :
	* @return
	* Method 설명 : 게시글 목록 조회
	 */
	List<BoardVo> getBoardList();
	
	
}
