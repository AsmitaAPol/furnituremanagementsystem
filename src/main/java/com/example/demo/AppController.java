package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Component;



@Component
public class AppController {
	
@Autowired
UserRepository repo;

//@RequestMapping("/")
//public String homePage()
//{
//	return "signup.jsp";
//}



@Autowired
	User user;
//User user=new User();
	
	
	@RequestMapping("/login")
	@PostMapping//GetMapping
	public ModelAndView loginResponse(@RequestParam ("id")Long id,@RequestParam("uname")String name,@RequestParam("uemail")String email,@RequestParam("check") boolean getVal)
	{
		

		user.setUemail("email");
		user.setUpassword("password");
		
		
		if(getVal)
		{
			
			repo.save(user);
			
			List<User> li=repo.findByLogin(user.getUname(),user.getUname());
			if(li.size()==1)
			{
				ModelAndView mv=new ModelAndView();
				mv.addObject("rid",id);
				mv.addObject("rname",name);
				mv.addObject("remail",email);
				mv.setViewName("/webapp/login.jsp");
				return mv;
			}
			else
			{
				ModelAndView mv=new ModelAndView();
				mv.addObject("rid",id);
				mv.addObject("rname",name);
				mv.addObject("remail",email);
				mv.setViewName("/webapp/error.jsp");
				return mv;
			}
		
		}
		else
		{
		}
		return null;
	}
}
	
	