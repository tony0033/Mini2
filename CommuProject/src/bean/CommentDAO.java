package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CommentDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	DBConnectionMgr pool;
	
	public CommentDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public void insert(CommentDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "insert into comment values('','','','')";
		
		ps = con.prepareStatement(sql);
		
		ps.setInt(1, dto.getNo());
		ps.setString(2, dto.getContent());
		ps.setString(3, dto.getWriter());
		ps.setString(4, dto.getDate());
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void delete(CommentDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "delete from comment where no = ? and writer = ? and content = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setInt(1, dto.getNo());
		ps.setString(2, dto.getWriter());
		ps.setString(3, dto.getContent());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	
	public ArrayList select(int no) throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from comment where no = ? oreder by date DESC";
		
		ps = con.prepareStatement(sql);
		ps.setInt(1, no);
		rs = ps.executeQuery();
	
		ArrayList list = new ArrayList();
		while(rs.next()) {
			CommentDTO dto = new CommentDTO();
			
			dto.setNo(rs.getInt(1));
			dto.setContent(rs.getString(2));
			dto.setWriter(rs.getString(3));
			dto.setDate(rs.getString(4));
			list.add(dto);
		}
		
		pool.freeConnection(con, ps);
		
		return list;
	}
	
}
