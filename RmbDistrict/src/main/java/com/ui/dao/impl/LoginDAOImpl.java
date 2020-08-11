package com.ui.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.ui.dao.LoginDAO;
/*import com.ui.model.BoardOfDirectors;
import com.ui.model.Members;*/
import com.ui.model.User;

public class LoginDAOImpl implements LoginDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	private static final Logger logger = LoggerFactory.getLogger(LoginDAOImpl.class);
/*
	@Override
	public Members frontLogin(String userName, String password) {
		logger.info("************ Inside Check Front Login *****************");
		String sql = "select member_id, membership_number, member_first_name, member_last_name, member_profile_picture, member_email, member_password, member_mobile_number, status, member_type from members where status!='n' and (member_email = ? OR member_mobile_number = ?) AND member_password = ?";
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, userName);
			ps.setString(2, userName);
			ps.setString(3, password);
			
			Members members = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				members = new Members();
				members.setMemberId(rs.getInt("member_id"));
				members.setMembershipNumber(rs.getString("membership_number"));
				members.setMemberFirstName(rs.getString("member_first_name"));
				members.setMemberLastName(rs.getString("member_last_name"));
				members.setMemberProfilePicture(rs.getString("member_profile_picture"));
				members.setMemberEmail(rs.getString("member_email"));
				members.setMemberPassword(rs.getString("member_password"));
				members.setMemberMobileNumber(rs.getString("member_mobile_number"));
				members.setStatus(rs.getString("status"));
				members.setMemberType(rs.getString("member_type"));
			}
			rs.close();
			ps.close();
			return members;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}
	
	@Override
	public BoardOfDirectors getBoardOfDirectorsInfo(int memberid) {
		logger.info("+++++ GET BOARD OF DIRECTOR'S INFORMATION +++++");
		String sql = "select member_id, member_family_id from board_of_directors where member_id = ? and status = 'y'";
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, memberid);			
			
			BoardOfDirectors boardOfDirectors = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				boardOfDirectors = new BoardOfDirectors();
				boardOfDirectors.setMemberId(rs.getInt("member_id"));
				boardOfDirectors.setMemberFamilyId(rs.getInt("member_family_id"));
			}
			rs.close();
			ps.close();
			return boardOfDirectors;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}
	*/
	@Override
	public User checkLogin(String userName, String password) {
		logger.info("Inside Check Login");
		String sql = "select user_id, user_name from user where user_name = ? AND password = ?";
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, userName);
			ps.setString(2, password);
			
			User user = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setUserId(rs.getInt("user_id"));
				user.setUserName(rs.getString("user_name"));
			}
			rs.close();
			ps.close();
			return user;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}
}