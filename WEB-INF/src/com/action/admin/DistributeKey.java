/**
 @Author : Munna Kumar Singh
 Date : Sep 5, 2012
 File : DistributeKey.java
 Package : com.action.admin
*/
package com.action.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.crypto.SecretKey;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AdminDAO;
import com.util.*;
public class DistributeKey extends HttpServlet
{
	// Send Mail Paarameters Starts 
	//private static String toEmailId="testmycvsprojects@gmail.com";
	private static String toEmailId="";
	private static String toMobileNo="";
	private static  String subject="";
	private static  String message="";
	private static  String attachedFilePath="";
	private static  String fromEmailId="senduserdetails369@gmail.com";
	private static  String password="kbzarexwcjdzdywv";
	private static  String hostname="smtp.gmail.com";
	private static  String portnumber="465";
	// Send Mail Paarameters Ends
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		int no=0,maxUserId = 0,no1Value=0;
		int deptCode1 = 0,deptCode2 = 0;
		int designCode1 = 0,designCode2 = 0;
		int userId = 0;
		String userEmail = "";
		boolean flag = false;
		RequestDispatcher rd = null;
		HttpSession session = null;
		ResultSet rs = null;
		String secreteKeyInfo = "";
		AdminDAO adminDAO = AdminDAO.getInstance();
		String privateKeyFilePath = req.getRealPath("")+"\\Files\\Keys\\privateKey.txt";
		String srcFilePath = "";
		String destFilePath ="";
		
		try
		{
			no = Utility.parse(req.getParameter("user_id"));
			if(no == 0)
			{
				maxUserId = adminDAO.getMaxUserID();
				no1Value=1;
			}
			else
			{
				maxUserId = no;
				no1Value=2;
			}
			
			rs = adminDAO.getSpecificUserDetails(maxUserId);
			while(rs.next())
			{
				userId = rs.getInt(1);
				deptCode1 = rs.getInt(5);
				//deptCode2 = rs.getInt(6);
				designCode1 = rs.getInt(6);
				//designCode2 = rs.getInt(8);
				userEmail = rs.getString(11);
				toMobileNo=rs.getString(10);
			}
			
			secreteKeyInfo = userId+"-"+deptCode1+"-"+designCode1;
			//secreteKeyInfo = userId+","+deptCode+","+designCode;
			System.out.println("Secrete Key Info : " + secreteKeyInfo);
			/* Adding The Secrete Key In Private Key File */
			flag = AppendToFile.appendDataToFile(privateKeyFilePath,secreteKeyInfo);
			flag = AppendToFile.appendDataToFile(privateKeyFilePath,secreteKeyInfo);
			if(flag)
			{
					 try 
					 {
						 /* Encrypting the Key Info Using DES FileEncryption&Decryption(Starts) */
							 srcFilePath=privateKeyFilePath;
							 destFilePath = req.getRealPath("")+"\\Files\\Keys1\\privateKey.txt";
							 File f = new File(destFilePath);
							 if(!f.exists())
					    	 {
					    		f.createNewFile();
					    		System.out.println("New File Generated");
					    	 }
							 
							 // Getting DES SecreteKey From DB
							 
							 SecretKey key = (SecretKey) SerializeToDatabase.getDESsecreteKey();
							 
							 DesFileEncrypter_Decrypter encrypter = new DesFileEncrypter_Decrypter(key);
							 encrypter.encrypt(new FileInputStream(srcFilePath), new FileOutputStream(destFilePath));
							 //encrypter.decrypt(new FileInputStream(destFilePath), new FileOutputStream("C:\\test.text"));
						 
						 /* Encrypting the Key Info Using DES FileEncryption&Decryption(Starts) */
						 
						 /* Mailing Key Info */
							subject = "Find Your Key Info";
							message="<html> <br> <b> <h3>Hello!<br>Please,Find The Attached File.<br>This File is having your File Acess Controle Info.</h3> </b> </html>";
							attachedFilePath = destFilePath;
							System.out.println("*********************************************");
							System.out.println("Attached File Path : " + attachedFilePath);
							System.out.println("*********************************************");
							
							toEmailId = userEmail;
							
                           flag = CL_SendMail.sendPersonalizedMail(toEmailId, fromEmailId,password,subject,message,attachedFilePath,hostname,portnumber);
							//boolean flagno=SendMSG.sendSMS(toMobileNo,"Dear User Private Key is sent to Your Email");
							if(flag)
							{
								System.out.println("Mail Sent To : " + toEmailId);
								rs = adminDAO.getUsers();
								req.setAttribute("rs", rs);
								//rd=req.getRequestDispatcher("/Resources/JSP/Admin/users.jsp?no=1&no1=1");
								rd=req.getRequestDispatcher("/Resources/JSP/Admin/users.jsp?no=1&no1="+no1Value);
								rd.forward(req,resp);
							}
							else
							{
								rd=req.getRequestDispatcher("/Resources/JSP/Admin/users.jsp?no=2&no1=2");
								rd.forward(req, resp);
								System.out.println("Sorry,Something went wrong Try It Again.....");
							}
						
					 } catch (Exception e) 
					 {
						System.out.println("Opps,Mail Sending Process Failed....");
						e.printStackTrace();
					 }
			}
			else
			{
				rd=req.getRequestDispatcher("/Resources/JSP/Admin/users.jsp?no=2&no1=2");
				rd.forward(req, resp);
				System.out.println("Opps,Something went wrong Try It Again.....");
			}
			
		} catch (Exception e) 
		{
			System.out.println("Opps,Exception in DistributeKey Servlet : ");
			e.printStackTrace();
		}
	
	}
}
