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
                           <li class="item  odd"><a href="MyPoly.jsp">My Polling </a></li>
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
                        <h1>All Questions</h1>
                    </div>
                    <div class="category-products">
          
                        <ol id="products-list" class="products-list col-sm-12">
                                     <%
                                  
DB con = new DB();
Connection c = con.getCon();
Statement statement = c.createStatement() ;
 Statement statement1 = c.createStatement() ;Statement statement2 = c.createStatement() ;
 Statement statement3 = c.createStatement() ;Statement statement4 = c.createStatement() ;
ResultSet resultset = statement.executeQuery("select * from questions");

while(resultset.next()){ 
    
  if(user.equals(resultset.getString(7))){
  String id = resultset.getString(1);
  String Qes = resultset.getString(2);
  String op1 = resultset.getString(3);
  String op2 = resultset.getString(4);
  String op3 = resultset.getString(5);
  String op4 = resultset.getString(6);
    
                                        ResultSet resultset1 = 
          statement1.executeQuery("SELECT COUNT(IdAns) FROM answerqes where IdQes="+ id+" and IdAns=1");
                                       
    ResultSet resultset2 = 
          statement2.executeQuery("SELECT COUNT(IdAns) FROM answerqes where IdQes="+ id+" and IdAns=2");
     
                                         ResultSet resultset3= 
          statement3.executeQuery("SELECT COUNT(IdAns) FROM answerqes where IdQes="+ id+" and IdAns=3"); 
                                        
                                          ResultSet resultset4 = 
          statement4.executeQuery("SELECT COUNT(IdAns) FROM answerqes where IdQes="+ id+" and IdAns=4"); 
                                        
  %>
                          
                            <li class="item odd  col-sm-12">
                                 
                                <div class="product-shop  col-sm-12">
                                  <h2 class="product-name"><a title=" Sample Product" href="#"> 
                                        <% out.println(Qes); %>
                                        </a></h2>
                                   
                                    <div class="desc std col-sm-12">
                                      
                                        <p class="col-sm-2">1. <% out.println(op1); %></p> 
                                           <p class="col-sm-2">2. <% out.println(op2); %></p> 
                                           <p class="col-sm-2">3. <% out.println(op3); %></p> 
                                           <p class="col-sm-2">4. <% out.println(op4); %></p> 
                                    
                                    </div
                                        <div class="desc std col-sm-12">
                                         <% if(resultset1.next()){String oop1 = resultset1.getString(1); %>
                                        <p>Answer option 1 : <% out.println(oop1); %></p> 
                                        <%}%>
                                              <% if(resultset2.next()){String oop2 = resultset2.getString(1); %>
                                        <p>Answer option 2 : <% out.println(oop2); %></p> 
                                        <%}%>
                                            <% if(resultset3.next()){String oop3 = resultset3.getString(1); %>
                                        <p>Answer option 3 : <% out.println(oop3); %></p> 
                                        <%}%>
                                              <% if(resultset4.next()){String oop4 = resultset4.getString(1); %>
                                        <p>Answer option 4 : <% out.println(oop4); %></p> 
                                        <%}%>
                                    
                                    </div>
                                 
                                     
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