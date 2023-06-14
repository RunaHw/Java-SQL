package ex0614;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Login {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_user= "HR";
			String db_pw = "12345";
			
			conn = DriverManager.getConnection(db_url, db_user, db_pw);
			
			System.out.print("ID를 입력해주세요 >> ");
			String id = sc.next();
			System.out.print("패스워드를 입력해주세요 >> ");
			String pw = sc.next();
			
			String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PW = ?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				String rid = rs.getString(1);
				String rpw = rs.getString(2);
				int rage = rs.getInt(3);
				System.out.println(rid+"님 환영합니다.");
			}
			else {
				System.out.println("아이디나 비밀번호가 잘못되었습니다.");
			}
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
			try {
				if(rs != null) {
					rs.close();	
				}
				if(psmt != null) {
					psmt.close();	
				}
				if(conn != null) {
					conn.close();	
				}
				sc.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		
		
		
		
		
		
		
	}

}
