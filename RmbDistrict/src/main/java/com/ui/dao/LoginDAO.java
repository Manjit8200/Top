package com.ui.dao;

import com.ui.model.*;

public interface LoginDAO 
{
	User checkLogin(String userName, String password);
	/*
	 * Members frontLogin(String userName, String password); BoardOfDirectors
	 * getBoardOfDirectorsInfo(int memberid);
	 */
}

