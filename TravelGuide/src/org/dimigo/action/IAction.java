package org.dimigo.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IAction {
	
	public abstract void execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
