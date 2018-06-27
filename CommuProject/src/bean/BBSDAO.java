package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BBSDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	DBConnectionMgr pool;
	
	public BBSDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public void insert(BBSDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "insert into bbs (title, content, writer, date, count, blike) "
				+ "values(?,?,?,?,0,0)";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getTitle());
		ps.setString(2, dto.getContent());
		ps.setString(3, dto.getWriter());
		ps.setString(4, dto.getDate());
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void update(BBSDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update BBS set title = ? , content = ?, date = ? where no = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getTitle());
		ps.setString(2, dto.getContent());
		ps.setString(3, dto.getDate());
		ps.setInt(4, dto.getNo());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	public void updateCount(BBSDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update BBS set count = ? where no = ?";
		
		ps = con.prepareStatement(sql);
		
		dto.setCount(dto.getCount()+1);
		ps.setInt(1, dto.getCount());
		ps.setInt(2, dto.getNo());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	public void updateBlike(BBSDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update BBS set blike = ? where no = ?";
		
		ps = con.prepareStatement(sql);
		
		dto.setBlike(dto.getBlike()+1);
		ps.setInt(1, dto.getBlike());
		ps.setInt(2, dto.getNo());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void delete(int no) throws Exception {
		con = pool.getConnection();
		
		String sql = "delete from BBS where no = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setInt(1, no);
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public BBSDTO select(int no) throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from BBS where no = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setInt(1, no);
		
		rs = ps.executeQuery();
		BBSDTO dto = null;
		while(rs.next()) {
			dto = new BBSDTO();
			
			dto.setNo(rs.getInt(1));
			dto.setTitle(rs.getString(2));
			dto.setContent(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setDate(rs.getString(5));
			dto.setCount(rs.getInt(6));
			dto.setBlike(rs.getInt(7));
		}
		
		pool.freeConnection(con, ps);
		
		return dto;
	}
	
	public ArrayList selectAll() throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from BBS";
		
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
	
		ArrayList list = new ArrayList();
		while(rs.next()) {
			BBSDTO dto = new BBSDTO();
			
			dto.setNo(rs.getInt(1));
			dto.setTitle(rs.getString(2));
			dto.setContent(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setDate(rs.getString(5));
			dto.setCount(rs.getInt(6));
			dto.setBlike(rs.getInt(7));
		
			list.add(dto);
		}
		
		pool.freeConnection(con, ps);
		
		return list;
	}
	
	public ArrayList selectAll(int start, int end) throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from BBS order by no DESC limit ?,?";
		
		ps = con.prepareStatement(sql);
		ps.setInt(1, start);
		ps.setInt(2, end);
		rs = ps.executeQuery();
		
		ArrayList list = new ArrayList();
		while(rs.next()) {
			BBSDTO dto = new BBSDTO();
			
			dto.setNo(rs.getInt(1));
			dto.setTitle(rs.getString(2));
			dto.setContent(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setDate(rs.getString(5));
			dto.setCount(rs.getInt(6));
			dto.setBlike(rs.getInt(7));
			
			list.add(dto);
		}
		
		pool.freeConnection(con, ps);
		
		return list;
	}
	
	public int bbsCount(){
		  int cnt=0;
		  try{
		   con = pool.getConnection();
		   String sql = "select count(*) from bbs";
		   ps = con.prepareStatement(sql);
		   rs = ps.executeQuery();
		   rs.next();
		   cnt = rs.getInt("count(*)");
		  }catch(Exception e){
		   e.printStackTrace();
		  }finally{
		   pool.freeConnection(con,ps);
		  }
		  return cnt;
		 }
	
}
