package com.rz;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class passwordedit
 * @param <object>
 * @param <object>
 */
@WebServlet("/passwordedit")
public class passwordedit<object> extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletRequest session;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public passwordedit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oldpassword=request.getParameter("oldpassword"); 
		String newpassword=request.getParameter("newpassword"); 
		String currentid = ((Map<String, object>)request.getSession().getAttribute("currentuser")).get("id").toString();
		
		String strSql1=" select * from tbusers where id=? and password =?"; 
		List<Object> params = new ArrayList<Object>();
		params.add(currentid);
		params.add(oldpassword);
		
		DBHelper Dal=new DBHelper();
		List<Map<String, Object>> list = null;
	
		try {
		
			list=Dal.executeQuery(strSql1, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		if(list.size()>0)
		{
			//旧密码正确
			String strSql2="update tbusers set password=? where id=?";
			List<Object> params2 = new ArrayList<Object>();
			params2.add(newpassword);
			params2.add(currentid);
			Dal.excuteSql(strSql2, params2);
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charse=utf-8");
			response.getWriter().write("<font color='green'>密码修改成功！</font>");
			response.setHeader("Refresh",  "3;URL="+request.getContextPath()+"/admin/passwordedit.jsp");
		}
		else
		{
			//密码输入错误
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("<font color='green'>输入的原密码错误！</font>");
			response.setHeader("Refresh", "3,URL="+request.getContextPath()+"/admin/passwordedit.jsp");			
		}
	}

}
