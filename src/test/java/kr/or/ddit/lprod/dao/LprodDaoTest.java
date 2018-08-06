package kr.or.ddit.lprod.dao;

import static org.junit.Assert.assertEquals;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.lprod.model.LprodVo;

import org.junit.Before;
import org.junit.Test;

public class LprodDaoTest {

	private LprodDaoInf lprodDao;
	
	
	@Before
	public void Setup(){
		lprodDao = new LprodDao();
	}
	
	
	/**
	* Method : selectAllLprodTest
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC21
	* 변경이력 :
	* Method 설명 : 모든 상품 정보
	*/
	@Test
	public void selectAllLprodTest() {
		/***Given***/

		/***When***/
		List<LprodVo> lprodList = lprodDao.selectAllLprod();
		
		for(LprodVo vo : lprodList){
			System.out.println(vo);
		}
		
		/***Then***/
		assertEquals(16, lprodList.size());
	}
	
	@Test
	public void getLprodPageListTest(){
		/***Given***/
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("page", 2);
		map.put("pageSize", 10);

		/***When***/
		List<LprodVo> pageList = lprodDao.getLprodPageList(map);
		
		/***Then***/
		assertEquals(6, pageList.size());
	}

}







