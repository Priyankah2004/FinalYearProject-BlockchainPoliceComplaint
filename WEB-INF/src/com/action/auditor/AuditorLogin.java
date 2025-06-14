/**
 * 
 */
package com.action.auditor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AdminDAO;



/**
 * @author Munna Kumar Singh
 */
public class AuditorLogin extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	{
		
		try
		{
			String user=request.getParameter("username");
			String pass=request.getParameter("password");
			
			HttpSession session = request.getSession(true);
			
			
			AdminDAO adminDAO=AdminDAO.getInstance();
			boolean result=adminDAO.checkAuditor(user,pass);
			if(result)
			{
				RequestDispatcher rd=null;
				session.setAttribute("username",user);
				rd=request.getRequestDispatcher("/Resources/JSP/Auditor/auditorhome.jsp");
				rd.forward(request,response);
			}
			else
			{
				response.sendRedirect("index1.jsp?no=4");
			}
		}
		catch(Exception e)
		{
			System.out.println("********* Exception In Auditor Servlet ********\n");
			e.printStackTrace();
		}
	}
}
