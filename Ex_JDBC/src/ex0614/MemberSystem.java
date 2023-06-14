package ex0614;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;


public class MemberSystem {
	static Connection conn = null;
	static ResultSet rs = null;
	static PreparedStatement psmt = null;
	static Scanner sc = new Scanner(System.in);
	

	public static void main(String[] args) {
		

		// 각각 흩어져 있는 기능들을 통합적으로 합치기!

		while (true) {
			System.out.print("[1]회원가입 [2]로그인 [3]정보수정 [4]회원탈퇴 [5]종료 >> ");
			int choice = sc.nextInt();

			if (choice == 1) {
				// 회원가입 기능 -> insert
				System.out.print("아이디 >> ");
				String id = sc.next();
				System.out.print("비밀번호 >> ");
				String pw = sc.next();
				System.out.print("나이 >> ");
				int age = sc.nextInt();
				
				int r = insert(id, pw, age);
				
				if(r > 0) {
					System.out.println("회원가입 성공!");
				}
				else {
					System.out.println("회원가입 실패!");
				}
			} else if (choice == 2) {
				// 로그인 기능 -> select
				System.out.print("ID를 입력해 주세여");
				String id = sc.next();
				System.out.print("PW를 입력해 주세여");
				String pw = sc.next();
				if(select(id, pw)) {
					System.out.println(id+"님 환영합니다.");
				}
				else {
					System.out.println("아이디나 비밀번호가 잘못되었습니다.");
				}
				
			} else if (choice == 3) {
				// 정보수정 기능 -> update
				System.out.print("[1]비밀번호 수정 [2]나이 수정 >> ");
				int select = sc.nextInt();
				System.out.print("ID를 입력해주세요.");
				String id = sc.next();
				update(id, select);
				if(result > 0) {
					System.out.println("변경되었습니다.");
				}
				else {
					System.out.println("변경되지 않았습니다.");
				}
				
			} else if (choice == 4) {
				// 회원탈퇴 기능 -> delete
				System.out.print("삭제할 ID를 적어주세요 >> ");
				String id = sc.next();
				System.out.print("삭제할 PW를 적어주세요 >> ");
				String pw = sc.next();
				if(delete(id, pw)>0) {
					System.out.println("삭제되었습니다.");
				}
				else {
					System.out.println("삭제되지 않았습니다.");
				}
				
			} else if (choice == 5) {
				System.out.println("감사합니다. 종료되었습니다.");
				break;
			} else {
				System.out.println("잘못된 선택입니다...!");
			}
		} // while끝

	}// main 끝

	//----------------------------------------------------------------------------------------
	// 모든 기능들이 공통적으로 사용하는 getCon(), Close() 생성
	public static void getCon() {
		// 드라이버 동적 로딩
		// 데이터베이스 연결 권한 체크!

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_user = "HR";
			String db_pw = "12345";
			conn = DriverManager.getConnection(db_url, db_user, db_pw);

		} catch (Exception e) {
			System.out.println("getCon() 오류");
			e.printStackTrace();
		}

	}
	//----------------------------------------------------------------------------------------
	public static void Close() {
		// 자원을 반납할 수 있는 기능 -> psmt, conn, rs
		
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
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	//----------------------------------------------------------------------------------------
	// 모든 메소드에서 사용할 수 있는 결과값 변수!
	static int result = 0;
	// 각 기능에 대한 메소드 구조 생성!
	public static int insert(String id, String pw, int age) {
		getCon();
		// insert() 호출시 필요한 데이터 전달!
		
		try {
			String sql = "INSERT INTO MEMBER VALUES(?, ?, ?)";
			psmt =conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setInt(3, age);
			
			result = psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		finally {
			Close();
		}
		
		return result;
	}

	//----------------------------------------------------------------------------------------
	static boolean isTrue = false;
	public static boolean select(String id, String pw) {
		getCon();
		
		String sql = "select * from member where id= ? and pw =?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			rs = psmt.executeQuery();
			isTrue =  rs.next();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Close();
		}
		
		return isTrue;
	}

	//----------------------------------------------------------------------------------------
	public static int update(String id, int select) {
		getCon();
		if(select == 1) {
			System.out.println("변경할 비밀번호를 입력해 주세요.");
			String sql = "Update member set pw = ? where id = ?";
			String pw = sc.next();
			
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, pw);
				psmt.setString(2, id);
				result = psmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
		}else if(select ==2) {
			System.out.println("변경할 나이를 입력해 주세요.");
			String sql = "Update member set age = ? where id = ?";
			int age = sc.nextInt();
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, age);
				psmt.setString(2, id);
				result = psmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				Close();
			}
		}
		
		return result;
		
		
	}
	//----------------------------------------------------------------------------------------
	public static int delete(String id, String pw) {
		getCon();

		try {
			String sql = "DELETE FROM MEMBER WHERE ID = ? AND PW = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			result = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Close();
		}
		return result;
	}

}
