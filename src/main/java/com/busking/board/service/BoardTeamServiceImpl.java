package com.busking.board.service;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardTeamDTO;
import com.busking.board.model.BoardTeamMapper;
import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardTeamServiceImpl implements BoardTeamService {
	
	SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request
		String page = (String)request.getAttribute("page");
		int pageNum = Integer.parseInt(page);
		
		// DTO
		ArrayList<BoardTeamDTO> list = new ArrayList<>();
		
		// Mapper
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardTeamMapper mapper = sql.getMapper(BoardTeamMapper.class);
		
		int total = mapper.getTotal();
		PageVO pageVO = new PageVO(pageNum, total);
		list = mapper.getList(pageVO);
		sql.close();
		
		// response
		request.setAttribute("teamList", list);
		request.setAttribute("pageVO", pageVO);
		request.getRequestDispatcher("board_team_list.jsp").forward(request, response);
	}
	
	@Override
	public void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request
		// DTO
		// Mapper
		// response
	}
	
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	
}
