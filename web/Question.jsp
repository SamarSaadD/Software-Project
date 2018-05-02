<%-- 
    Document   : index
    Created on : Apr 17, 2018, 2:09:53 PM
    
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
  <div class="main-container col2-left-layout">
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
ResultSet resultset = statement.executeQuery("select * from questions");

while(resultset.next()){ 
  String id = resultset.getString(1);
  String Qes = resultset.getString(2);
  String op1 = resultset.getString(3);
  String op2 = resultset.getString(4);
  String op3 = resultset.getString(5);
  String op4 = resultset.getString(6);
  %>
    <li class="item odd col-sm-12">
        <form action="Questions" method="get">
                              
                                <div class="product-shop col-sm-12">
                                    <h2 class="product-name"><a title=" Sample Product" href="#"> 
                                        <% out.println(Qes); %>
                                        </a></h2>
                                   
                                    <div class="desc std col-sm-12">
                                        
                                        <p class="col-sm-3">1. <% out.println(op1); %></p> 
                                           <p class="col-sm-3">2. <% out.println(op2); %></p> 
                                           <p class="col-sm-3">3. <% out.println(op3); %></p> 
                                           <p class="col-sm-3">4. <% out.println(op4); %></p> 
                                    
                                    </div>
                                    <div class="actions row">
                                        <div class="col-sm-2">
                                            <input type="hidden" name="IdQes" value="<%=id%>" />
                                        <input type="text" name="IdAns" class="form-control" placeholder="Enter the # of Option" />
                                        </div>
                                        <button class="button btn-cart ajx-cart" title="Submit" type="Submit"><span>Submit</span></button>
                                       
                                    </div>
                                </div>
                           </form>   </li>

    
    
<%
} %>


                            
                            
                           
                        
                          
                        </ol>
                    </div>
                </section>
                
            </div>
        </div>
    </div>
﻿﻿<%@ include file="footer.jsp"%>
</div>
</body >
</html>