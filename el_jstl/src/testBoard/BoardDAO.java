package testBoard;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "jsp", pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	public BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//DB list값 출력
	public ArrayList<BoardDTO> list(int start, int end){
		//String sql = "select * from paging";
		//String sql = "select * from paging order by num desc"; //order by로 최신글을 정렬
		String sql = "select B.* from"
				+ "(select rownum rn, A.* from "
				+ "(select * from paging order by num desc)A)B "
				+ "where rn between ? and ?";
		ArrayList<BoardDTO> listDto = new ArrayList<BoardDTO>();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setInt(1, start); //시작 값
			ps.setInt(2, end); //끝 값
			rs = ps.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setPdate(rs.getString("pdate"));
				dto.setCount(rs.getInt("count"));
				listDto.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listDto;
	}
	
	//제목 삽입
	public void insert(BoardDTO dto) {
		//test_num.nextval를 사용하면 1에서 숫자가 1씩 증가한다.
		String sql = "insert into paging(num, title, pdate, count) "
				+ "values(test_num.nextval, ?, sysdate, 0)";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getTitle());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//조회수 숫자 증가
	public void count(String num) {
		String sql = "update paging set count=count + 1 where num =" + num;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//한 페이지에 게시물 숫자
	public int getTotalPage() {
		String sql = "select count(*) from paging";
		int totPage = 0;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) totPage = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return totPage;
	}
	
}
