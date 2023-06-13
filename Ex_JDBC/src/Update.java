import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Update {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		PreparedStatement psmt = null;
		Connection conn = null;
		
		try {
			// 1.드라이버 동적 로딩 -> Class.forName() 사용		
			//	예외상황 catch 해 주기!
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2. 데이터베이스 연결 -> Connection 객체 사용
			// 		- db_url, db_user, db_pw 입력 -> DiverManager.getConnection()활용
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_user= "HR";
			String db_pw= "12345";
			
			conn = DriverManager.getConnection(db_url, db_user, db_pw);
			
			// 3. 전송하고자하는 sql 문장 생성하기
			//		- 어떤 내용으로 수정할 것인지 수정 값 입력받기(비밀번호 바꾸기)
			//		- 생성된 sql 문장 DB로 전달 -> PreparedStatement 객체사용
			//		- 사용자부터 입력받은 수정값은 ?을 사용해여 DB에 전달
			//		- 해당 sql문 실행하기 -> psmt.executeUpdate()
			//		- 실행결과에 대한 값 저장하기 -> 성공 여부 파악!
			System.out.print("당신의 ID를 입력해 주세요 >> ");
			String ID = sc.next();
			System.out.print("변경할 비밀번호를 입력해 주세요 >> ");
			String newPW = sc.next();
			
			String sql = "UPDATE MEMBER SET PW = ? WHERE ID = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, newPW);
			psmt.setString(2, ID);
			
			int result = psmt.executeUpdate();
			if(result >0) {
				System.out.println("비밀번호가 변경 되었습니다.");
			} else {
				System.out.println("x");
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
				if(psmt != null) {
					psmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		
		
		
		
		// 4. 다 사용된 객체들 역순으로 닫아주기! -> close() 활용
		
		
	}

}
