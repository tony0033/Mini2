package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.DBConnectionMgr;
import bean.MemberDTO;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	DBConnectionMgr pool;
	
	public MemberDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public void insert(MemberDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "insert into member values(?,?,?,'0','0','0','0')";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPw());
		ps.setString(3, dto.getName());
		

		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void update(MemberDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update member set pw = ?, name = ?, pay = ?, free = ?, exp = ?, last=? where id = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getPw());
		ps.setString(2, dto.getName());
		ps.setString(3, dto.getPay());
		ps.setString(4, dto.getFree());
		ps.setString(5, dto.getExp());
		ps.setString(6, dto.getLast());
		ps.setString(7, dto.getId());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void updatePay(MemberDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update member set pay = ? where id = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getPay());
		ps.setString(2, dto.getId());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void updatefree(String id, int free) throws Exception {
		con = pool.getConnection();
		
		String sql = "update member set free = free + ? where id = ?";
		
		ps = con.prepareStatement(sql);
		ps.setInt(1, free);
		ps.setString(2, id);
		
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void updateExp(String id) throws Exception {
		con = pool.getConnection();
		
		String sql = "update member set exp=exp+1 where id = ?";
		
		ps = con.prepareStatement(sql);
		ps.setString(1, id);
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void delete(String id) throws Exception {
		con = pool.getConnection();
		
		String sql = "delete from member where id = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, id);
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public MemberDTO select(String id) throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from member where id = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, id);
		
		rs = ps.executeQuery();
		MemberDTO dto = null;
		while(rs.next()) {
			dto = new MemberDTO();
			
			dto.setId(rs.getString(1));
			dto.setPw(rs.getString(2));
			dto.setName(rs.getString(3));
			dto.setPay(rs.getString(4));
			dto.setFree(rs.getString(5));
			dto.setExp(rs.getString(6));
			dto.setLast(rs.getString(7));

		}
		
		pool.freeConnection(con, ps);
		
		return dto;
	}
	
	public ArrayList<MemberDTO> selectAll() throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from member";
		
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
	
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		while(rs.next()) {
			MemberDTO dto = new MemberDTO();
			
			dto.setId(rs.getString(1));
			dto.setPw(rs.getString(2));
			dto.setName(rs.getString(3));
			dto.setPay(rs.getString(4));
			dto.setFree(rs.getString(5));
			dto.setExp(rs.getString(6));
			dto.setLast(rs.getString(7));
			list.add(dto);
		}
		
		pool.freeConnection(con, ps);
		
		return list;
	}
	public ArrayList<MemberDTO> memberAll() throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from member order by exp desc";
		
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		while(rs.next()) {
			MemberDTO dto = new MemberDTO();
			
			dto.setId(rs.getString(1));
			dto.setPw(rs.getString(2));
			dto.setName(rs.getString(3));
			dto.setPay(rs.getString(4));
			dto.setFree(rs.getString(5));
			dto.setExp(rs.getString(6));
			dto.setLast(rs.getString(7));
			list.add(dto);
		}
		
		pool.freeConnection(con, ps);
		
		return list;
	}
	public int memberCount(){
		  int cnt=0;
		  try{
		   con = pool.getConnection();
		   String sql = "select count(*) from member";
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

