package board;

import java.sql.*;
import java.util.ArrayList;

public class BoardDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user="jsp", pwd="1234";
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
	
	//게시물 작성 목록
	public ArrayList<BoardDTO> list(){
		//String sql="select * from test_board";
		String sql = "select * from test_board order by idgroup desc, step asc";
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setId(rs.getInt("id"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
				
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				
				dto.setSavedate(rs.getTimestamp("savedate"));
				list.add(dto);
			}
		} catch (Exception e) { e.printStackTrace(); }
		return list;
	}
	
	//값 insert
	public void write_save(String name, String title, String content) {
		String sql = "insert into test_board(id,name,title,content,idgroup,step,indent)"
				+ "values(test_board_seq.nextval, ?, ?, ?, test_board_seq.currval,0,0)"; //test_board_seq.currval은 test_board_seq.nextval의 값을 넣어주라는 의미
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, title);
			ps.setString(3, content);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//조회수처리
	private void upHit(String id) { //조회수 처리는 내부적으로 처리하기 때문에 private로 처리해준다.
		String sql = "update test_board set hit=hit+1 where id=?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public BoardDTO contentView(String id) {
		upHit(id); //조회수
		String sql ="select * from test_board where id=?";
		BoardDTO dto = new BoardDTO();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto.setId(rs.getInt("id"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
				
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				
				dto.setSavedate(rs.getTimestamp("savedate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	//수정
	public void modify(BoardDTO dto) {
		String sql = "update test_board set name=?, title=?, content=? where id=?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			ps.setInt(4, dto.getId());
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//삭제
	public void delete(String id) {
		String sql = "delete from test_board where id="+id;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//답변
	public BoardDTO reply_view(String id) {
		String sql ="select * from test_board where id="+id;
		BoardDTO dto = new BoardDTO();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto.setId(rs.getInt("id"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
				
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				
				dto.setSavedate(rs.getTimestamp("savedate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	//답변응답
	private void replyShape(BoardDTO dto) {
		String sql = "update test_board set step=step+1 where idgroup=? and step > ?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setInt(1, dto.getIdgroup());
			ps.setInt(2, dto.getStep());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void reply(BoardDTO dto) {
		replyShape(dto);
		String sql = "insert into test_board(id,name,title,content,idgroup,step,indent)"
				+ "values(test_board_seq.nextval, ?, ?, ?, ?, ?, ?)";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			ps.setInt(4, dto.getIdgroup());
			ps.setInt(5, dto.getStep()+1);
			ps.setInt(6, dto.getIndent()+1);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
