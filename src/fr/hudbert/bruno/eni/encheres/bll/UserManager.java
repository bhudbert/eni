package fr.hudbert.bruno.eni.encheres.bll;

import java.util.Enumeration;
import java.util.Optional;

import javax.servlet.http.HttpSession;

public class UserManager {
	private int id; 
	private String name;
	private String firsname;
	private String nickname;
	private String street;
	private int postalCode;
	private String City;
	private String accesLevel;

	
	private void getAuthntificationLevel(HttpSession session) {
		/**
		 * 
		 *	 In session => 3 informations  : 
		 *	 ================================
		 * 		1-Firstname
		 * 		2-Name
		 * 		3-AccesLevel : ( Enum ?  )
		 * 
		 */
		
	    
	  
	}
	
	
	private Optional  sessionCheckAccessLevel(HttpSession session) {
		Enumeration<String> list=session.getAttributeNames();
		int accessLevel = 0;
		while (list.hasMoreElements()) {
			String elementName = list.nextElement();
			session.getAttribute(elementName);
		}  
		return accessLevel;
	}
		
	
	private void setAuthntificationLevel() {
		
		
	}
	
	private void disconnect() {
		
	}
	
}
