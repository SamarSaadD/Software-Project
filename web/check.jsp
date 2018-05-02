<%-- 
    Document   : check
    Created on : Apr 22, 2018, 9:27:42 PM
    Author     : sohad
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>
<%@ page import="javaClass.DB"%>
<%@ page import="javaClass.User"%>
<% 
    String Id = request.getParameter("Id");
    String Passwords = request.getParameter("Passwords");
   
    try {
          DB db = new DB();
          Connection con = db.getCon();
          Statement stmt =  con.createStatement(); 
          ResultSet rs = stmt.executeQuery("select * from users where Id="+Id+ " and Passwords='"+Passwords+"'");
   
      if(rs.next()) {
            session.setAttribute("userid", Id);
        response.sendRedirect("MyAccount.jsp");
       
        
      }else {
        out.println("Wrong id and password");
      }
      
    }

  catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
   
%>

