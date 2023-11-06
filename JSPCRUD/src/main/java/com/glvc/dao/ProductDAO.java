package com.glvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.glvc.bean.Product;
import com.glvc.dbutil.ProductDbUtil;

public class ProductDAO {
	
	public int insert(Product p) throws ClassNotFoundException, SQLException {
		Connection con = ProductDbUtil.dbcon();
		if(con!= null) {
			System.out.println("COnnection Established");
		}else {
			System.out.println("Connection Failed");
		}
		
		
		String sql = "insert into product values(?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, p.getPid());
		ps.setString(2, p.getPname());
		ps.setFloat(3, p.getCost());
		
		return ps.executeUpdate();
	}
	
	public int edit(Product p) throws ClassNotFoundException, SQLException {
		Connection con = ProductDbUtil.dbcon();
		if(con!= null) {
			System.out.println("COnnection Established");
		}else {
			System.out.println("Connection Failed");
		}
		
		
		String sql = "update product set pname= ?, cost =? where pid = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(3, p.getPid());
		ps.setString(1, p.getPname());
		ps.setFloat(2, p.getCost());
		
		return ps.executeUpdate();
	}
	
	public int delete(Product p) throws ClassNotFoundException, SQLException {
		Connection con = ProductDbUtil.dbcon();
		if(con!= null) {
			System.out.println("COnnection Established");
		}else {
			System.out.println("Connection Failed");
		}
		
		
		String sql = "delete from product where pid = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, p.getPid());
		
		return ps.executeUpdate();
	}
	
	public List<Product> display() throws ClassNotFoundException, SQLException{
		Connection con = ProductDbUtil.dbcon();
		if(con!= null) {
			System.out.println("COnnection Established");
		}else {
			System.out.println("Connection Failed");
		}
		
		List<Product> list = new ArrayList<Product>();
		String sql = "select * from product";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			Product product = new Product();
			product.setPid(rs.getInt(1));
			product.setPname(rs.getString(2));
			product.setCost(rs.getFloat(3));
			list.add(product);
		}
		return list;
		
	}
	
	
	

}
