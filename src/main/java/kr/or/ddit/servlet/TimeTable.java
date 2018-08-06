package kr.or.ddit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TimeTable
 */
@WebServlet("/TimeTable")
public class TimeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimeTable() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		
		pw.write("<style>");
		pw.write("td {border : 1px solid gray;}");
		pw.write("td {background : gray}");
		pw.write("</style>");
		pw.write("<body>");
		pw.write("<table>");
		for (int i = 2; i <= 9; i++) {
			pw.write("<tr>");
			for (int j = 1; j <= 9; j++) {
				pw.write("<td>"+j + " * " + i + " = " + i*j + " "+"</td>");
//				pw.write("</br>"); 
			}
			pw.write("</tr>");
			pw.write("</br>");
		}
		pw.write("</table>");
		pw.write("</body>");
		pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
