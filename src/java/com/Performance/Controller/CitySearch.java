package com.Performance.Controller;

import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;


public class CitySearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public CitySearch() {
        }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String country=request.getParameter("countryname");
		Map<String, String> ind = new LinkedHashMap<String, String>();
	    ind.put("1", "New delhi");
	    ind.put("2", "Tamil Nadu");
	    ind.put("3", "Kerala");
	    ind.put("4", "Andhra Pradesh");
	    
	    Map<String, String> us = new LinkedHashMap<String, String>();
	    us.put("1", "Karlskrona");
	    us.put("2", "Ronneby");
	    us.put("3", "Stockholm");
	    us.put("4", "Linkopping");
	    
	    Map<String, String> reset = new LinkedHashMap<String, String>();
	    reset.put("1", "Select State");
	    
	    String json = null ;
	    if(country.equals("India")){
	    	json= new Gson().toJson(ind);   
	    }
	    else if(country.equals("sweden")){
	    	json=new Gson().toJson(us);  
	    }
	    else if(country.equals("Select Country"))
	    {
	    	json=new Gson().toJson(reset);
	    }
	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
		    
		    
	}

	

}
