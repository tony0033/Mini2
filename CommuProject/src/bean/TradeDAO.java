package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TradeDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	DBConnectionMgr pool;
	
	public TradeDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public void insert(TradeDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "insert into trade (name, price, writer,content, count, status,report) values(?,?,?,?,0,0,0)";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getName());
		ps.setString(2, dto.getPrice());
		ps.setString(3, dto.getWriter());
		ps.setString(4, dto.getContent());
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void update(TradeDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update Trade set name = ? , price = ? content = ? where no = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getName());
		ps.setString(2, dto.getPrice());
		ps.setString(3, dto.getContent());
		ps.setInt(4, dto.getNo());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void updateCount(TradeDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update trade set count = ? where no = ?";
		
		ps = con.prepareStatement(sql);
		
		dto.setCount(dto.getCount() + 1);
		
		ps.setInt(1, dto.getCount());
		ps.setInt(2, dto.getNo());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void updateStatus(TradeDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update trade set status = ? where no = ?";
		
		ps = con.prepareStatement(sql);
		dto.setStatus(dto.getStatus()+1);
		
		ps.setInt(1, dto.getStatus());
		ps.setInt(2, dto.getNo());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	public void updateReport(TradeDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update trade set report = report+1 where no = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setInt(1, dto.getNo());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void delete(int no) throws Exception {
		con = pool.getConnection();
		
		String sql = "delete from Trade where no = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setInt(1, no);
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public TradeDTO select(int no) throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from Trade where no = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setInt(1, no);
		
		rs = ps.executeQuery();
		TradeDTO dto = null;
		while(rs.next()) {
			dto = new TradeDTO();
			
			dto.setNo(rs.getInt(1));
			dto.setName(rs.getString(2));
			dto.setPrice(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setCount(rs.getInt(5));
			dto.setStatus(rs.getInt(6));
			dto.setReport(rs.getInt(7));
			dto.setContent(rs.getString(8));
		}
		
		pool.freeConnection(con, ps);
		
		return dto;
	}
	public ArrayList<TradeDTO> select(String writer) throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from Trade where writer = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, writer);
		
		rs = ps.executeQuery();
		
		ArrayList<TradeDTO> list = new ArrayList<TradeDTO>();
		while(rs.next()) {
			TradeDTO dto = new TradeDTO();
			
			dto.setNo(rs.getInt(1));
			dto.setName(rs.getString(2));
			dto.setPrice(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setCount(rs.getInt(5));
			dto.setStatus(rs.getInt(6));
			dto.setReport(rs.getInt(7));
			dto.setContent(rs.getString(8));
		
			list.add(dto);
		}
		
		pool.freeConnection(con, ps);
		
		return list;
	}
	
	public ArrayList<TradeDTO> selectAll() throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from trade";
		
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
	
		ArrayList<TradeDTO> list = new ArrayList<TradeDTO>();
		while(rs.next()) {
			TradeDTO dto = new TradeDTO();
			
			dto.setNo(rs.getInt(1));
			dto.setName(rs.getString(2));
			dto.setPrice(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setCount(rs.getInt(5));
			dto.setStatus(rs.getInt(6));
			dto.setReport(rs.getInt(7));
			dto.setContent(rs.getString(8));
			list.add(dto);
		}
		
		pool.freeConnection(con, ps);
		
		return list;
	}
	
	public ArrayList<TradeDTO> selectAll(int start, int end) throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from trade order by no DESC limit ?,?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, start);
		ps.setInt(2, end);
		rs = ps.executeQuery();
		
		ArrayList<TradeDTO> list = new ArrayList<TradeDTO>();
		while(rs.next()) {
			TradeDTO dto = new TradeDTO();
			
			dto.setNo(rs.getInt(1));
			dto.setName(rs.getString(2));
			dto.setPrice(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setCount(rs.getInt(5));
			dto.setStatus(rs.getInt(6));
			dto.setReport(rs.getInt(7));
			dto.setContent(rs.getString(8));
			list.add(dto);
		}
		
		pool.freeConnection(con, ps);
		
		return list;
	}
	public ArrayList selectTAll(int start, int end) throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from trade order by report DESC limit ?,?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, start);
		ps.setInt(2, end);
		rs = ps.executeQuery();
		
		ArrayList list = new ArrayList();
		while(rs.next()) {
			TradeDTO dto = new TradeDTO();
			
			dto.setNo(rs.getInt(1));
			dto.setName(rs.getString(2));
			dto.setPrice(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setCount(rs.getInt(5));
			dto.setStatus(rs.getInt(6));
			dto.setReport(rs.getInt(7));
			dto.setContent(rs.getString(8));
			list.add(dto);
		}
		
		pool.freeConnection(con, ps);
		
		return list;
	}
	
	public int tradeCount(){
		  int cnt=0;
		  try{
		   con = pool.getConnection();
		   String sql = "select count(*) from trade";
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
	public int tradeRCount(){
		int cnt=0;
		try{
			con = pool.getConnection();
			String sql = "select count(*) from trade where report >= 1";
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
