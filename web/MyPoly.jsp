<%-- 
    Document   : index
    Created on : Apr 17, 2018, 2:09:53 PM
    Author     : Sohad
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>
<%@ page import="javaClass.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xml:lang="en">
﻿﻿<%@ include file="head.jsp"%>

<body >
<div class="page"> 
<%@ include file="header.jsp"%>
   <div class="main-container col2-right-layout">
    <div class="main container">
      <div class="row">
        <aside class="col-right sidebar col-sm-3 wow bounceInUp animated">
              <div class="block block-company">
                   <% String user=(String)session.getAttribute("userid");  %>
                  <div class="block-title">My Account <%out.println(user);%></div>
                  <div class="block-content">
                      <ol id="recently-viewed-items">
                         
                          <li class="item  odd"><a href="MyAccount.jsp">My Account </a></li>
                          <li class="item odd"><a href="AddPoly.jsp">Add Poly</a></li>
                           <li class="item  odd"><a href="MyQes.jsp">My Questions </a></li>
                          <li class="item odd"><a href="AddQes.jsp">Add Question</a></li>
                          <li class="item even"><a href="http://localhost:8080/WebApplication1/logOut">log out</a></li>
                      </ol>
                  </div>
              </div>
          </aside>
          <section class="col-main col-sm-9 wow bounceInUp animated">
          
          <div class="static-contain">
            <fieldset class="group-select">
                  <div class="main container">
            <div class="row">
                <section class="col-main col-sm-12 wow bounceInUp animated">
                   
                    <div class="category-title"> 
                        <h1>All Polling</h1>
                    </div>
                    <div class="category-products">
          
                        <ol id="products-list" class="products-list col-sm-12">
                                     <%
                                  
DB con = new DB();
Connection c = con.getCon();
Statement statement = c.createStatement() ;
ResultSet resultset = statement.executeQuery("select * from pollings");

while(resultset.next()){ 
    if(user.equals(resultset.getString(4))){
  String id = resultset.getString(1);
  String Poll = resultset.getString(2);
  String per = resultset.getString(3);

  %>
                          
                            <li class="item odd  col-sm-12">
                                 <form action="pollings" method="get">
         
                                  <input type="hidden" name="Id" value="<%=id%>" />
                                   <input type="hidden" name="oldRating" value="<%=per%>" />
                                <div class="product-shop  col-sm-12">
                                    <h2 class="product-name col-sm-8"><a title=" Sample Product" href="3"> 
                                      <% out.println(Poll); %> 
                                        </a></h2>
                                      <h6 class="col-sm-4"> The Rate: <% out.println(per); %> /10</h6>
                                 
                                    
                                </div>
                                        </form>
                            </li> 
                           
                                        <% }} %>
                        </ol>
                    </div>
                </section>
                
            </div>
        </div>
            </fieldset>
          </div>
        </section>
        
      </div>
    </div>
  </div>
﻿﻿<%@ include file="footer.jsp"%>
</div>
</body >
</html>