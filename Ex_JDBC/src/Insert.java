import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Insert {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_user = "HR";
			String db_pw = "12345";
			
			conn = DriverManager.getConnection(db_url, db_user, db_pw);
			
			System.out.print("ID를 입력해주세요. >> ");
			String ID = sc.next();
			System.out.print("PASSWORD를 입력해주세요. >> ");
			String PW = sc.next();
			System.out.print("나이를 입력해주세요. >> ");
			int AGE = sc.nextInt();
			
			String sql = "INSERT INTO MEMBER VALUES(?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, ID);
			psmt.setString(2, PW);
			psmt.setInt(3, AGE);
			
			int result = psmt.executeUpdate();
			if(result > 0) {
				System.out.println("회원가입 성공!");
			}
			else {
				System.out.println("회원가입 실패!");
			}
			
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			
				try {
					if(psmt != null) {
						psmt.close();
					} 
					if(conn != null) {
						conn.close();
					}	
					sc.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		
		
	}

}
