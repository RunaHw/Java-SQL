package ex0614;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Select {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_user = "HR";
			String db_pw = "12345";

			conn = DriverManager.getConnection(db_url, db_user, db_pw);

			String sql = "SELECT * FROM MEMBER";
			psmt = conn.prepareStatement(sql);

			// 4) 실행
			// DML : psmt.executeUpdate() --> int로 몇행 변경이 일어났는가?
			// SELECT : psmt.executeQuery() --> ResultSet 객체에 조회결과를 담아서 리턴
			rs = psmt.executeQuery();

			// 5) 조회결과 가공하기
			// (1). 커서 내리기
			// 커서를 한칸 내리고, 도착한 행에 데이터가 있는지 없는지 리턴해준다.
			// 데이터가 있으면 true / 없으면 false
			// boolean result = rs.next();
			while (rs.next()) { // rs.next를 이용해서 데이터가 없을때까지 반복

				// (2). 데이터 꺼내기
				// rs.get자료형(int or String);
				String id = rs.getString("ID");
				String pw = rs.getString("pw");
				// 컬럼 이름을 기준으로 데이터 꺼내기
				int age = rs.getInt("age");

				System.out.println(id + "\t" + pw+ "\t" + age+ "\t");
				System.out.println("================================");
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
				sc.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
