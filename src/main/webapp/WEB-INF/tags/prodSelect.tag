<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="lgu" type="java.lang.String" required="true" %>
<%@ tag import="java.sql.*"%>


	<%
	//DB작업에 필요한 객체 변수 선언
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;	//쿼리문이 'select'일 경우 필요
			
			try {
				// 1. 드라이버 로딩
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				// 2. DB에 접속 => Connection객체 생성
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String user = "pc21";
				String pass = "java";
				
				conn = DriverManager.getConnection(url, user, pass);
				
				
				// 3. Statement객체 생성 (Statement 객체는 Connection객체를 이용해서 생성한다)
				stmt = conn.createStatement();
				
				// 4. SQL문을 Statement객체를 이용하여 실행하고 실행결과를 ResultSet객체에 저장한다.
				String sql = "select prod_id, prod_name from prod where prod_lgu=\'"  + jspContext.getAttribute("lgu") + "\'";
				rs = stmt.executeQuery(sql);
				/* System.out.print(jspContext.getAttribute("lgu")); */
				
				// 5. 결과 처리 ==> resultSet 객체에 저장되어 있는 자료를 반복문을 이용하여 차례로 읽어와 처리한다.
				/* System.out.println("============실행결과============"); */
//				 	ResultSet객체에 담겨 있는 데이터(레코드)에 접근하기 위해 현재 작업을 진행하는 레코드를 가리키는 것이 있는데
//					이것을 커서 (Cursor)라 한다.
//					next()메서드는 이 커서의 위치를 다음 레코드 위치로 이동시키고 그 자리에 데이터가 있으면 true, 없으면 false를 반환한다.
				
				
				
					out.write("<select>");

				while(rs.next()){
				/* 	System.out.println("STD_NUM: " + rs.getInt("STD_NUM"));
					System.out.println("STD_NAME: " + rs.getString("STD_NAME")); //번호로 지정하여 사용하여도 된다.
						//컬럼의 데이터를 가져오기 위해서는 'get자료형이름()' 메서드를 사용하는데 이 메서드의 매가값으로 '컬럼명' 또는 '컬럼번호'를 지정하면 된다. (컬럼번호는 1번부터 시작한다)
					System.out.println("STD_KOR: " + rs.getString("lprod_gu"));
					System.out.println("STD_ENG: " + rs.getString("STD_ENG"));
					System.out.println("STD_MAT: " + rs.getString("STD_MAT"));
					System.out.println("=======================================");
					 */
					 out.write("<option value= \""+rs.getString("PROD_ID")+ "\">" + rs.getString("PROD_NAME") +"</option>");
					 
					out.write(rs.getString("PROD_ID"));
					out.write(rs.getString("PROD_NAME"));
					
				}
					out.write("</select>");
				/* System.out.println("출력 끝!"); */
				
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				//6. 사용했던 자원 반납
				if(rs!=null) try {rs.close();} catch (SQLException e2) {}
				if(stmt!=null) try {stmt.close();} catch (SQLException e2) {}
				if(conn!=null) try {conn.close();} catch (SQLException e2) {}
			}
			
	%>
	
	<!-- <select>
		<option value="prod_id">prod_name</option>
	</select> -->
	
	
	
	
	