package ex0614;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Delete {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Connection conn = null;
		PreparedStatement psmt = null;
		int result = 0;

		// 사용자의 아이디와 비밀번호를 입력받아서, 해당하는 사용자 정보를 DB에서 삭제
		try {
			// 1) Driver 동적로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2) DB랑 연결
			// jdbc:oracle:thin: - 프로토콜
			// @localhost - ip주소(특정하나의 컴퓨터를 지정)
			// :1521	  - port번호 (어떤 문으로 들어가야 해당 프로그램이 나오는지)
			// :xe   	  - 데이터베이스 이름
			

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_user = "HR";
			String db_pw = "12345";

			conn = DriverManager.getConnection(db_url, db_user, db_pw);

			System.out.print("삭제할 아이디를 입력해 주세요 >> ");
			String ID = sc.next();
			System.out.print("삭제할 비밀번호를 입력해 주세요 >> ");
			String PW = sc.next();

			String sql = "DELETE FROM MEMBER WHERE ID = ? AND PW = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, ID);
			psmt.setString(2, PW);

			result = psmt.executeUpdate();
			if (result > 0) {
				System.out.println("삭제되었습니다");
			} else {
				System.out.println("아이디 또는 비밀번호가 맞지 않습니다.");
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		finally {
			try {
				if (psmt != null)
					psmt.close();
				if (conn != null)
					conn.close();
				sc.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
