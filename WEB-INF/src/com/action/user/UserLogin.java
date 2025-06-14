/**
 * 
 */
package com.action.user;

import javax.servlet.RequestDispatcher;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;

/**
 * @author Munna Kumar Singh
 *Nov 30, 2011 11:54:32 AM
 *Project:-Data_Mining
 *Package:-com.nitin.user.action
 *File:-UserLogin.java
 */
public class UserLogin extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			String username=request.getParameter("username");
			String pass=request.getParameter("password");
			UserDAO userDao=UserDAO.getInstance();
			
			boolean result=userDao.checkUser(username, pass);
			if(result)
			{
				RequestDispatcher rd=null;
				int uid = userDao.getID(username);
				HttpSession hs=request.getSession();
				hs.setAttribute("username", username);
				hs.setAttribute("userid",uid);
				
				System.out.println("******** User Login Info ********");
				System.out.println("  Userid : " + uid);
				System.out.println("Username : " + username);
				System.out.println("Password : " + pass);
				
				
				rd=request.getRequestDispatcher("/Resources/JSP/User/userhome.jsp");
				rd.forward(request,response);
			}
			else
			{
				
				response.sendRedirect("invalid.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
