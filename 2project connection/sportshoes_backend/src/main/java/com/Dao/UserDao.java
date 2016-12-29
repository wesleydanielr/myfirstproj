package com.Dao;

import com.inter.userdaointer;

public class UserDao implements userdaointer {

	public boolean IsValidCredential(String name ,String password)
	{
		if(name.equals("niit") && password.equals("niit"))
		{
			return true;
		}
		else 
		{
			return false;
			
		}
		
	
	}
	
}
