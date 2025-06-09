package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import com.DAO.DAO;

public class TextCount {

	private static Connection connection = null;
	private static Statement statement = null;
	private static ResultSet resultSet = null;
	public static String text_count(ArrayList<String> datas,String fname)
	{
		
		
		Set<String> unique = new HashSet<String>(datas);
		
		int count1=0,count2=0,count3=0;
		StringBuffer sb=new StringBuffer();
		
		
		
		for (int i=0;i<datas.size();i++)
		{
			
			System.out.println("temp========================================="+datas.get(i));
			
			int count = Collections.frequency(datas, datas.get(i));
				
			
			int cat=checkkeywordCategorynew(datas.get(i));
			
			if(cat==1)
			{
			boolean flg=false;
		//	flg=UserDAO.inserttocategorycardio(datas.get(i),count,fname,cat);
			
			count1++;
			
			}
			if(cat==2)
			{
				System.out.println("????????????????");
				boolean flg=false;
		//	flg=UserDAO.inserttocategorydigestive(datas.get(i),count,fname,cat);
			//if(flg)
			//{
			count2++;
			//}
			}
			
			if(cat==3)
			{
				System.out.println("????????????????");
				boolean flg=false;
		//	flg=UserDAO.inserttocategorydigestive(datas.get(i),count,fname,cat);
			//if(flg)
			//{
			count3++;
			//}
			}
			
				
		//	System.out.println(temp + ": " +count );
			
			
		 }
		
		sb.append(count1);
		sb.append("~~");
		sb.append(count2);
		sb.append("~~");
		
		sb.append(count3);
		sb.append("~~");
		return sb.toString();
		
		
		}
	
	public static int checkkeywordCategorynew(String key)
	{
		boolean f=false;
		int catcode=0;
		try
		{
			DAO dao=DAO.getInstance();
			connection=dao.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select m_priority from m_priority where m_word='"+key+"'");
			String sql="select m_priority from m_priority where m_word='"+key+"'";
			System.out.println("========================="+sql);
			while(resultSet.next())
			{
				catcode = resultSet.getInt(1);
			}
			System.out.println("============catcode============="+catcode);
			
			//System.out.println("Category Code :"+catcode);
			/*updateCatCode(key,catcode);	
			f=true;*/
			
		}
		catch(Exception e)
		{
			System.out.println("Exception in UserProcess-->selectKeyword(String userid): "+ e);
		}
		finally
		{
			try {
				resultSet.close();
				statement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return catcode;
	}
}
