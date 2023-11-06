package subjects;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBUtil.DbUtil;

public class SubjectsDAO {
	public int insert(SubjectsPojo subject) throws ClassNotFoundException, SQLException {
		Connection con = DbUtil.dbcon();
		String sql = "insert into subjects values(?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, subject.getSubid());
		ps.setString(2, subject.getSubname());
		return ps.executeUpdate();
	}
	
	public int update(SubjectsPojo subject) throws ClassNotFoundException, SQLException {
		Connection con = DbUtil.dbcon();
		String sql = "update subjects set subname = ? where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(2, subject.getSubid());
		ps.setString(1, subject.getSubname());
		return ps.executeUpdate();
	}
	
	public int delete(SubjectsPojo subject) throws ClassNotFoundException, SQLException {
		Connection con = DbUtil.dbcon();
		String sql = "delete from subjects where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, subject.getSubid());
		return ps.executeUpdate();
	}
	
	public List<SubjectsPojo> display() throws ClassNotFoundException, SQLException{
		Connection con = DbUtil.dbcon();
		
		List<SubjectsPojo> list = new ArrayList<SubjectsPojo>();
		String sql = "select * from subjects";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			SubjectsPojo subject = new SubjectsPojo();
			subject.setSubid(rs.getInt(1));
			subject.setSubname(rs.getString(2));
			list.add(subject);
			
		}
		return list;
	}
	public List<SubjectsPojo> option() throws ClassNotFoundException, SQLException{
		Connection con = DbUtil.dbcon();
		
		List<SubjectsPojo > list = new ArrayList<SubjectsPojo>();
		String sql = "select * from subjects";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			SubjectsPojo subject = new SubjectsPojo();
			subject.setSubid(rs.getInt("id"));
			subject.setSubname(rs.getString("subname"));
			list.add(subject);
		}
		
		return list;
		
		
	}

}
