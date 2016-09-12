/*package com.niit.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import java.io.Serializable;



@Entity
public class UsersDetail implements Serializable{

   
   
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue
    private int userId;

	@NotEmpty (message = "User name can not be empty.")
    private String userFullName;

	
    private String userEmail;

	private String userPhone;	
	
	
    private String username;

    @NotNull (message = "Password must not be empty.")
    private String password;

    private boolean enabled;

 
    public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
			return userPhone;
	}

	public void setUserPhone(String userPhone) {
			this.userPhone = userPhone;
	}

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

   
    public int getUserId() {
  		return userId;
  	}

  	public void setUserId(int userId) {
  		this.userId = userId;
  	}
  	 public String getUserFullName() {
 		return userFullName;
 	}

 	public void setUserFullName(String userFullName) {
 		this.userFullName = userFullName;
 	}
}

package com.niit.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import java.io.Serializable;



@Entity
public class UsersDetail implements Serializable{

   
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue
    private int userId;

	@Size(min=3,max=30)
	@NotNull (message = "User name can not be empty.")
    private String userFullName;

	//@Pattern(regexp=".+@.+\\.[a-z]+")
	@NotNull (message = "Email name can not be empty.")
    private String userEmail;
	
	
	//@Pattern(regexp="\\(\\d{3}\\)\\d{3}-\\d{4}")
	 @NotNull (message = "Phone must not be empty.")
	private String userPhone;	
	
	@Size(min=3,max=30)
	@NotEmpty (message = "Username must not be empty.")
    private String username;

	//@Pattern(regexp="((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})")
	//mkyong1A@
    @NotNull (message = "Password must not be empty.")
    private String password;

    private boolean enabled;

 
    public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
			return userPhone;
	}

	public void setUserPhone(String userPhone) {
			this.userPhone = userPhone;
	}

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

   
    public int getUserId() {
  		return userId;
  	}

  	public void setUserId(int userId) {
  		this.userId = userId;
  	}
  	 public String getUserFullName() {
 		return userFullName;
 	}

 	public void setUserFullName(String userFullName) {
 		this.userFullName = userFullName;
 	}
}*/