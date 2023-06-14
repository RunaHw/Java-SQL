package ex0614;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class Test {
	
	public static void main(String[] args) {

//		 db 왔다갔다 안해도 되는 방법!!!!!!!!!
//		 window - show view - data source ~
//		 db 연결해줘야함
//		 database connections 우클릭 new
//		 oracle 선택 (프로그램별로 다름)
//		 oracle 버전 , ojdbc 버전 맞춰줘야함
//		 연결 후에 sql 쿼리 실행해서 확인할 수 있는 메모장 만들어줘야함
//		 우클릭 - > new -> sql file
//		 조회방법 alt + x 누르면됨

		// 각각 흩어져 있는 기능들을 통합적으로 합치기
		Scanner sc = new Scanner(System.in);
		int choice = 0;
		String id, pw;
		int age;

		while (choice != 5) {

			System.out.print("[1]회원가입 [2]로그인 [3]정보수정 [4]회원탈퇴 [5]종료 >> ");

			choice = sc.nextInt();

			if (choice == 1) {
				// insert
				System.out.print("ID 입력 >> ");
				id = sc.next();
				System.out.print("PW 입력 >> ");
				pw = sc.next();
				System.out.print("나이 입력 >> ");
				age = sc.nextInt();
				if (insert(id, pw, age) > 0) {
					System.out.println("회원가입 성공");
				} else {
					System.out.println("회원가입 실패");
				}
			} else if (choice == 2) {
				// select
				System.out.print("ID 입력 >> ");
				id = sc.next();
				System.out.print("PW 입력 >> ");
				pw = sc.next();

				
				if (select(id, pw)) {
					System.out.println("로그인 성공");
				} else {
					System.out.println("로그인 실패");
				}

			} else if (choice == 3) {
				// update
				System.out.println("[1]비밀번호 수정 [2] 나이 수정");
				if (choice == 1) {
					System.out.print("ID 입력 >> ");
					id = sc.next();
					System.out.print("수정할 PW 입력 >> ");
					pw = sc.next();
					int cnt = update(id, pw);
					if (cnt > 0) {
						System.out.println("정보변경 성공");
					} else {
						System.out.println("정보변경 실패");
					}

				} else if (choice == 2) {
					System.out.print("ID 입력 >> ");
					id = sc.next();
					System.out.print("수정할 나이 입력 >> ");
					age = sc.nextInt();
					int cnt = update(id, age);
					if (cnt > 0) {
						System.out.println("정보변경 성공");
					} else {
						System.out.println("정보변경 실패");
					}
				}

			} else if (choice == 4) {
				// delete
				System.out.print("탈퇴할 ID 입력 >> ");
				id = sc.next();
				System.out.print("PW 확인 >> ");
				pw = sc.next();
				int cnt = delete(id);
				if (cnt > 0) {
					System.out.println("회원탈퇴 성공");
				} else {
					System.out.println("회원탈퇴 실패");
				}

			} else if (choice == 5) {
				System.out.println("프로그램 종료");
			} else {
				System.out.println("잘못 입력하셨습니다.");
			}

		}

	}

	static Connection conn = null;
	static PreparedStatement psmt = null;
	static ResultSet rs = null;
	static int cnt = 0;

	public static void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "HR";
			String db_pw = "12345";

			conn = DriverManager.getConnection(url, db_id, db_pw);

//			if (conn != null) {
//				System.out.println("DB 연결 성공");
//			} else {
//				System.out.println("DB 연결 실패");
//			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			close();
		}
	}

	public static void close() {

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
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	public static int insert(String id, String pw, int age) {
		conn();
		String sql = "INSERT INTO MEMBER VALUES ( ? , ? , ? )";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setInt(3, age);
			cnt = psmt.executeUpdate();
			return cnt;
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	static boolean result = false;
	public static boolean select(String id, String pw) {
		
		conn();
		String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PW = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			rs = psmt.executeQuery();

			result = rs.next();
			
		
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}


		return result;
	}

	public static int update(String id, String pw) {
		conn();
		String sql = "UPDATE MEMBER SET PW = ? WHERE ID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pw);
			psmt.setString(2, id);
			cnt = psmt.executeUpdate();
			return cnt;
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return 0;

	}

	public static int update(String id, int age) {
		conn();
		String sql = "UPDATE MEMBER SET AGE = ? WHERE ID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, age);
			psmt.setString(2, id);
			cnt = psmt.executeUpdate();
			return cnt;
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return 0;
	}

	public static int delete(String id) {
		conn();
		String sql = "DELETE FROM MEMBER WHERE ID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			cnt = psmt.executeUpdate();
			return cnt;
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return 0;

	}



}
