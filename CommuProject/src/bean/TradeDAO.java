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
		
		String sql = "insert into (name, price, writer, count) trade values(?,?,?,0)";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getName());
		ps.setString(2, dto.getPrice());
		ps.setString(3, dto.getWriter());
	
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void update(TradeDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update Trade set name = ? , price = ? where no = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getName());
		ps.setString(2, dto.getPrice());
		ps.setString(3, dto.getNo());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	public void updateCount(TradeDTO dto) throws Exception {
		con = pool.getConnection();
		
		String sql = "update trade set count = ? where no = ?";
		
		ps = con.prepareStatement(sql);
		
		dto.setCount(dto.getCount() + 1);
		
		ps.setInt(1, dto.getCount());
		ps.setString(2, dto.getNo());
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public void delete(String no) throws Exception {
		con = pool.getConnection();
		
		String sql = "delete from Trade where no = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, no);
		
		ps.executeUpdate();
		
		pool.freeConnection(con, ps);
	}
	
	public TradeDTO select(String no) throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from Trade where no = ?";
		
		ps = con.prepareStatement(sql);
		
		ps.setString(1, no);
		
		rs = ps.executeQuery();
		TradeDTO dto = null;
		while(rs.next()) {
			dto = new TradeDTO();
			
			dto.setNo(rs.getString(1));
			dto.setName(rs.getString(2));
			dto.setPrice(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setCount(rs.getInt(5));
		}
		
		pool.freeConnection(con, ps);
		
		return dto;
	}
	
	public ArrayList selectAll() throws Exception {
		con = pool.getConnection();
		
		String sql = "select * from trade";
		
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
	
		ArrayList list = new ArrayList();
		while(rs.next()) {
			TradeDTO dto = new TradeDTO();
			
			dto.setNo(rs.getString(1));
			dto.setName(rs.getString(2));
			dto.setPrice(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setCount(rs.getInt(5));
		
			list.add(dto);
		}
		
		pool.freeConnection(con, ps);
		
		return list;
	}
	
}
