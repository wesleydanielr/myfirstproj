package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.UserDao;





@Controller
public class HomeController {

	@RequestMapping(value = "/")
	public String getHome()
{
		return "index";
	}
	
@RequestMapping(value ="/signup")
public String GetSingin()
{
	
return "signup";
}

@RequestMapping(value ="/login")
public String GetLogin()
{	
	return "login";
}



@RequestMapping(value="/validate",method=RequestMethod.GET)
    public ModelAndView getpage(@RequestParam("lname") String name,@RequestParam("lpwd") String password){
	
	ModelAndView mv = new ModelAndView("login");
	 UserDao dao = new UserDao();
if ( dao.IsValidCredential(name, password)==true)
{
	mv.addObject("success", "Login Succesfull");
}
else{
	mv.addObject("failure", "Login Unsuccesfull");

}
	
	return mv;
}
}

	
	
	
	

