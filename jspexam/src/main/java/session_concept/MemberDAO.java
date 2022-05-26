package session_concept;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MemberDAO() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "oracle";
		String upw = "oracle";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, upw);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void insert(MemberDTO member) {
		String query = "insert into session_concept values(?, ?, ?, ?)";
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, member.getId());
			ps.setString(2, member.getPw());
			ps.setString(3, member.getName());
			ps.setString(4, member.getEmail());
			ps.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			exit();
		}
	}
	
	public ArrayList<MemberDTO> selectAll(){
		ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
		String query = "select * from session_concept";
		try {
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				MemberDTO member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				members.add(member);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			exit();
		}
		
		return members;
	}
	
	public MemberDTO selectId(String id) {
		String query = "select * from session_concept where id=?";
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				MemberDTO member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));

				return member;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			exit();
		}
		
		return null;
	}
	
	public void update(MemberDTO member) {
		String query = "update session_concept set pw=?, name=?, email=? where id=?";
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, member.getPw());
			ps.setString(2, member.getName());
			ps.setString(3, member.getEmail());
			ps.setString(4, member.getId());
			ps.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			exit();
		}
	}
	
	public void delete(MemberDTO member) {
		String query = "delete from session_concept where id=?";
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, member.getId());
			ps.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			exit();
		}
	}
	
	private void exit() {
		try {
			if (rs != null) rs.close();
			if (ps != null) ps.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
