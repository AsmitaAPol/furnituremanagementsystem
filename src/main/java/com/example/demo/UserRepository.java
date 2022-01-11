package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Long> {
	
	
	//user defined method
	
	List<User>findByUname(String uname);
	
	List<User>findByUage(int uage);
	
	List<User>findByIdGreaterThan(int id);

	@Query("from User where uname=?1 order by uemail")
	List<User>findByUnameSorted(String uname);
	
	@Query("from User where uname=?1 and password=?2")
	List<User>findByLogin(String uname,String upassword);

}
/*
*Repository: A component which is loaded with bulk of data and functionalities
*
*/