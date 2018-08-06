package kr.or.ddit.user.board.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kr.or.ddit.user.board.model.BoardVo;

public class BoardService implements BoardServiceInf{

	
	
	/**
	 * 
	* Method : getBoardList
	* 최초작성일 : 2018. 7. 5.
	* 작성자 : PC21
	* 변경이력 :
	* @return
	* Method 설명 : 게시글 목록 조회
	 */
	@Override
	public List<BoardVo> getBoardList() {
		List<BoardVo> boardList = new ArrayList<BoardVo>();
		
		//db에서 조회가 되었다고 가정하고 임의의 값을 리턴
		boardList.add(new BoardVo("첫번째 글입니다.", "첫번쨰 내용입니다", "black", "신생아곰", new Date()));
		boardList.add(new BoardVo("두번째 글입니다.", "두번쨰 내용입니다", "white", "아빠곰", new Date()));
		boardList.add(new BoardVo("세번째 글입니다.", "세번쨰 내용입니다", "yellow", "엄마곰", new Date()));
		boardList.add(new BoardVo("네번째 글입니다.", "네번쨰 내용입니다", "gray", "애기곰", new Date()));
		boardList.add(new BoardVo("다섯번째 글입니다.", "다섯번쨰 내용입니다", "pink", "할머니곰", new Date()));
		
		return boardList;
	}
	
}
