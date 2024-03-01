package com.buyer.dao;

import java.sql.*;

import com.buyer.model.Buyer;

public class BuyerDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public BuyerDao(Connection con) {
		this.con = con;
	}
	
	public Buyer buyerLogin(String loginid, String password) {
		Buyer buyer = null;
		try {
			query = "SELECT * FROM buyerregistrations where loginid = ? and password = ?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, loginid);
			pst.setString(2, password);
			rs = pst.executeQuery();
			
			if(rs.next()) {
				buyer = new Buyer();
				buyer.setId(rs.getInt("id"));
				buyer.setName(rs.getString("name"));
				buyer.setEmail(rs.getString("email"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return buyer;
	}
}
