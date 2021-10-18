package conn.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ex01")
public class ex01 extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		
		Connection conn = null;
		PreparedStatement psmt = null;
		try {		
			
			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3307/JDBC";
			String dbid = "root";
			String dbpw = "root";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
			String sql = "";
			
			if(conn!=null) {
				System.out.println("연결성공");
			}else {
				System.out.println("연결실패");
			}
			
			//4.sql문 준비단계
			sql = "insert into JDBC_member values(?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setNString(1, id);
			psmt.setNString(2, pw);
			psmt.setNString(3, nick);
			
			//5. SQL문 명령 후 처리
			int cnt = psmt.executeUpdate();
			
			if(cnt>0) {
				response.sendRedirect("ex02Login.html");
			}else {
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			//1. 지역변수
			//2. 예외처리
		
			try {
				if(psmt!=null) {
				psmt.close();
				}
				if(conn!=null) {
				conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

}
