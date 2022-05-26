package center;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import care.MemberDTO;

public class CenterDAO {
	private Connection con;

	public CenterDAO() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "oracle";
		String password = "oracle";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insert(CenterDTO center) {
		String sql = "INSERT INTO care_center VALUES(care_center_seq.nextVal, ?,?,?,?,?,?)";
		System.out.println(center.getFileName());
		// write_time
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String write_time = dateFormat.format(new Date(System.currentTimeMillis()));
				
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, center.getSubject());
			ps.setString(2, center.getContent());
			ps.setString(3, center.getId());
			ps.setInt(4, 0);
			ps.setString(5, write_time);
			ps.setString(6, center.getFileName());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public CenterDTO selectNum(String num) {
		String sql = "SELECT * FROM care_center WHERE num=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, num);
			rs = ps.executeQuery();
			if(rs.next()) {
				CenterDTO center = new CenterDTO();
				center.setNum(rs.getInt("num"));
				center.setSubject(rs.getString("subject"));
				center.setContent(rs.getString("content"));
				center.setId(rs.getString("id"));
				center.setHit(rs.getInt("hit"));
				center.setWriteTime(rs.getString("write_time"));
				center.setFileName(rs.getString("file_name"));
				
				return center;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	public ArrayList<CenterDTO> search(String find, String data) {
		String sql = "";
		ArrayList<CenterDTO> centers = new ArrayList<CenterDTO>();

		if (find.equals("subject")) {
			sql = "SELECT * FROM care_center WHERE subject like '%" + data + "%' order by num desc";
			
		} else if (find.equals("content")) {
			sql = "SELECT * FROM care_center WHERE content like '%" + data + "%' order by num desc";
			
		} else if (find.equals("id")) {
			sql = "SELECT * FROM care_center WHERE id like '%" + data + "%' order by num desc";
		}
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				CenterDTO center = new CenterDTO();
				center.setNum(rs.getInt("num"));
				center.setSubject(rs.getString("subject"));
				center.setContent(rs.getString("content"));
				center.setId(rs.getString("id"));
				center.setHit(rs.getInt("hit"));
				center.setWriteTime(rs.getString("write_time"));
				center.setFileName(rs.getString("file_name"));
				centers.add(center);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return centers;
	}
	public ArrayList<CenterDTO> selectAll() {
		ArrayList<CenterDTO> centers = new ArrayList<CenterDTO>();
		
		String sql = "SELECT * FROM care_center order by num desc";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				CenterDTO center = new CenterDTO();
				center.setNum(rs.getInt("num"));
				center.setSubject(rs.getString("subject"));
				center.setContent(rs.getString("content"));
				center.setId(rs.getString("id"));
				center.setHit(rs.getInt("hit"));
				center.setWriteTime(rs.getString("write_time"));
				center.setFileName(rs.getString("file_name"));
				centers.add(center);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return centers;
	}
	

	
	public void update(CenterDTO center) {
		String sql = "UPDATE care_center SET subject=?, content=?, write_time=?, file_name=? WHERE num=?";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, center.getSubject());
			ps.setString(2, center.getContent());
			ps.setString(3, center.getWriteTime());
			ps.setString(4, center.getFileName());
			ps.setInt(5, center.getNum());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void delete(String num) {
		String sql = "DELETE FROM care_center WHERE num=?";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, num);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void addHit(int num) {
		String sql = "update care_center set hit=hit+1 where num=?";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
