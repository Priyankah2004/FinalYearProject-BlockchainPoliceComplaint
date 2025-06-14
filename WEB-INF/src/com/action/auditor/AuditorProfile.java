/**
 * 
 */
package com.action.auditor;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AdminDAO;
import com.DAO.UserDAO;

/**
 * @author Munna Kumar Singh
 
*/
public class AuditorProfile extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		PrintWriter out=response.getWriter();
		ResultSet rs = null;
		String username = "";
		HttpSession session = null;
		try
		{
			session = request.getSession();

		    if(session != null)
		    {
		    	username = session.getAttribute("username").toString();
		    	
		    }
			
		    AdminDAO adminDAO = AdminDAO.getInstance();
			rs = AdminDAO.getAuditorProfile(username);
			if(rs.next())
			{   
				rs = AdminDAO.getAuditorProfile(username);
				request.setAttribute("rs",rs);
				RequestDispatcher rd=request.getRequestDispatcher("/Resources/JSP/Auditor/profile.jsp?no=0");
				rd.forward(request, response);
			}
			else
				response.sendRedirect(request.getContextPath()+"/Files/JSP/Auditor/profile.jsp?no=1");
			
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in Auditor==>Profile Servlet :");
			e.printStackTrace();
			out.println("Opps's Error is in Auditor==>Profile Servlet......"+e);
		}
	}
}
