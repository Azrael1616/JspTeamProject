package cs.dit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.LoginDto;

public class LoginDao {
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/joinjedb");
		Connection con = ds.getConnection();
		return con;
	}
	public ArrayList<LoginDto> list() {
		String sql = "select id, pwd, nickname, email, hobby from MEMBER";
		ArrayList<LoginDto> dtos = new ArrayList<LoginDto>();
		try(
				Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
			){
			while(rs.next()) {
				LoginDto dto= new LoginDto();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setNickname(rs.getString("nickname"));
				dto.setEmail(rs.getString("email"));
				dto.setHobby(rs.getString("hobby"));
				
				dtos.add(dto);
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return dtos;
	}
	public boolean checkUser(String id,String pwd) {
		String sql = "select * from MEMBER where id=? and pwd=?";
		boolean check = false;
		try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			)
		{
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);

			
			try(ResultSet rs = pstmt.executeQuery();) {
				if(rs.next()) {
					String userpwd = rs.getString("pwd");
					if(userpwd.equals(pwd)) {
						check = true;
					} else {
						check = false;
					}
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	public void insert(LoginDto dto) {
		String sql = "insert into MEMBER(id,pwd,nickname,email,hobby)values(?,?,?,?,?)";
		try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			) 
		{
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getNickname());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getHobby());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public LoginDto selectone(String id) {
		String sql = "select * from MEMBER where id=?";
		LoginDto dto = new LoginDto();
		try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			) 
		{
			pstmt.setString(1, id);
			
			try(ResultSet rs = pstmt.executeQuery();) 
			{
				rs.next();
				
				dto.setId(id);
				dto.setPwd(rs.getString("pwd"));
				dto.setNickname(rs.getString("nickname"));
				dto.setEmail(rs.getString("email"));
				dto.setHobby(rs.getString("hobby"));
			}
			catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	public void update(LoginDto dto) {
		String sql = "update MEMBER set pwd = ?, nickname = ?, hobby = ? where id = ?";
		try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			) 
		{
			pstmt.setString(1, dto.getPwd());
			pstmt.setString(2, dto.getNickname());
			pstmt.setString(3, dto.getHobby());
			pstmt.setString(4, dto.getId());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void delete(String id) {
		String sql = "delete from MEMBER where id = ?";
		try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			) 
		{
			pstmt.setString(1, id);	
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
