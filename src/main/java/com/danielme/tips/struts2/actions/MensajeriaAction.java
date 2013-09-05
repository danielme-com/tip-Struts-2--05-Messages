package com.danielme.tips.struts2.actions;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @author danielme.com
 *
 */
public class MensajeriaAction extends ActionSupport 
{	
	
	/**
	 * Identificador para serialización
	 */
	private static final long serialVersionUID = 1L;

	
	public String execute() 
	{		
		addActionError(getText("error1"));
		addActionError(getText("error2"));
		
		//mensaje con parámetro, fecha y hora localizada según los properties i18n
		SimpleDateFormat sdf = new SimpleDateFormat(getText("pattern"), ActionContext.getContext().getLocale());
		String msg1 = String.format(getText("msg1"), sdf.format(new Date()));
		addActionMessage(msg1);
		addActionMessage(getText("msg2"));

		return SUCCESS;
    }	
	
}
