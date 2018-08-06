package kr.or.ddit.lprod.dao;

import java.util.List;
import java.util.Map;

import kr.or.ddit.lprod.model.LprodVo;

public interface LprodDaoInf {
	
	/**
	* Method : selectAllLprod
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC21
	* 변경이력 :
	* @return
	* Method 설명 : lprod테이블의 모든 정보를 갖고 온다.
	*/
	List<LprodVo> selectAllLprod();
	
	
	
	
	/**
	* Method : getLprodPageList
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC21
	* 변경이력 :
	* @param map
	* @return
	* Method 설명 : 상품정보 페이지 리스트 조회
	*/
	List<LprodVo> getLprodPageList(Map<String, Integer> map);
	
	
	int getLprodTotCnt();
}
