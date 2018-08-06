package kr.or.ddit.student.service;

import static org.junit.Assert.assertEquals;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.student.model.StudentVo;

import org.junit.Before;
import org.junit.Test;

public class StudentServiceTest {

	StudentServiceInf service;
	
	@Before
	public void setup(){
		service = new StudentService();
	}
	
	
	
	@Test
	public void selectAllStudentsTest() {
		
		/***Given***/
//		StudentServiceInf service = new StudentService();

		/***When***/
		List<StudentVo> list = service.selectAllStudents();
		for(StudentVo vo : list){
			System.out.println(vo);
		}
		
		/***Then***/
		assertEquals(25, list.size());
	}
	
	
	/**
	 * 
	* Method : selectStudentTest
	* 최초작성일 : 2018. 7. 10.
	* 작성자 : PC21
	* 변경이력 :
	* Method 설명 : 학생 정보조회
	 */
	@Test
	public void selectStudentTest(){
		/***Given***/
		int id = 8;
//		StudentServiceInf service = new StudentService();

		/***When***/
		StudentVo vo = service.getStudent(id);
		System.out.println(vo);
		/***Then***/
		assertEquals("양관모", vo.getName());
	}
	
	/**
	 * 
	* Method : selectStudent2Test
	* 최초작성일 : 2018. 7. 10.
	* 작성자 : PC21
	* 변경이력 :
	* Method 설명 : 학생정보 조회
	 */
	@Test
	public void selectStudent2Test(){
		/***Given***/
//		StudentServiceInf service = new StudentService();
		StudentVo vo = new StudentVo();
		vo.setName("차득림");
		vo.setId(9);
		
		/***When***/
		StudentVo vo2 = service.getStudent(vo);
		System.out.println(vo2);
		/***Then***/
		
		assertEquals("차득림", vo.getName());

	}
	
	
	@Test
	public void getStudentPageListTest(){
		/***Given***/
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("page", 2);
		map.put("pageSize", 10);

		/***When***/
		Map<String , Object> resultMap = service.getStudentPageList(map);
		
		//학생 페이지 리스트
		List<StudentVo> pageList = (List<StudentVo>)resultMap.get("pageList");
		
		//학생 전체 건수
		int totCnt = (int)resultMap.get("totCnt");
		
		/***Then***/
		assertEquals(10, pageList.size());
		assertEquals(25, totCnt);
		
	}
	
	@Test
	public void calculatePageNavi(){
		/***Given***/
		int totCnt = 25;
		int pageSize = 10;
		
		int cnt = totCnt/pageSize; 	//몫
		int mod = totCnt % pageSize;	//나머지
		
		if(mod >0)
			cnt++;
		/***When***/
		double naviSize = (totCnt / pageSize);
		
		/***Then***/
		assertEquals(3, cnt);
	}

	@Test
	public void updateResultTest(){
		/***Given***/
		StudentVo vo = new StudentVo();
		vo.setId(2);
		vo.setAddr1("청주시 흥덕구 가경동");
		vo.setAddr2("형석1차 105동 1308호");
		vo.setName("뿡뿡이");
		vo.setZipcd("34940");
		vo.setPic("cony.png");
		vo.setPicpath("D:\\A_TeachingMaterial\\7.Jspspring\\fileUpload");
		vo.setPicname("231192e4-67a9-4766-b25f-2e7a21732054");
		
		
		/***When***/
		int count = service.studentUpdate(vo);
		
		/***Then***/
		assertEquals(1, count);
	
		
	}
	
	
}
