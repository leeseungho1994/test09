package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "jsp", pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	public MemberDAO() {
		try {
			//forName 예외처리가 필요하다
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<MemberDTO> memberList(){
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			String sql = "select * from members";
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO d = new MemberDTO();
				d.setId(rs.getString("id"));
				d.setPwd(rs.getString("pwd"));
				d.setName(rs.getString("name"));
				d.setAddr(rs.getString("addr"));
				d.setTel(rs.getString("tel"));
				list.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void memberInsert(String id, String pwd, String name, String addr, String tel) {
		String sql = "insert into members values(?,?,?,?,?)";
		try {
				con = DriverManager.getConnection(url, user, this.pwd);
				ps = con.prepareStatement(sql);
				ps.setString(1, id);
				ps.setString(2, pwd);
				ps.setString(3, name);
				ps.setString(4, addr);
				ps.setString(5, tel);
				
				rs = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void memberUpdate(String upName, String upAddr, String upTel,String upId) {
		String sql = "update members set name =?, addr =?, tel =? where id = ?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, upName);
			ps.setString(2, upAddr);
			ps.setString(3, upTel);
			ps.setString(4, upId);
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void memberDelete(String upId) {
		String sql = "delete from members where id =?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, upId);
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} 	
	}
}
