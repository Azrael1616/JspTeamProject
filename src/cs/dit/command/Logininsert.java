package cs.dit.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.LoginDao;
import cs.dit.LoginDto;

public class Logininsert implements LogSerivce {
	
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String nickname = request.getParameter("nickname");
		String email = request.getParameter("email");
		String hobby = request.getParameter("hobby");
		
		
		LoginDto dto = new LoginDto(id, pwd, nickname, email, hobby);
		
		LoginDao dao = new LoginDao();
		
		dao.insert(dto);
	}
}
