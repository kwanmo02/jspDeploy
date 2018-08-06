package kr.or.ddit.lprod.service;

import static org.junit.Assert.assertEquals;

import java.util.List;

import kr.or.ddit.lprod.model.LprodVo;

import org.junit.Before;
import org.junit.Test;

public class LprodServiceTest {
	LprodServiceInf lprodService;
	
	
	@Before
	public void Setup(){
		lprodService = new LprodService();
	}
	
	
	@Test
	public void selectAllLprodTest() {
		/***Given***/

		/***When***/
		List<LprodVo> list = lprodService.selectAllLprod();
		for(LprodVo vo : list){
			System.out.println(vo);
		}
		/***Then***/
		assertEquals(16, list.size());
	}

	@Test
	public void calculatePageNavi(){
		/***Given***/
		int totCnt = 16;
		int pageSize = 10;
		
		int cnt = totCnt/pageSize;
		int mod = totCnt%pageSize;

		if (mod>0) {
			cnt++;
		}
		
		/***When***/
		double naviSize = (totCnt/pageSize);
		/***Then***/
		
		assertEquals(2, cnt);
		

	}
	
	
	
	
	
	
}
