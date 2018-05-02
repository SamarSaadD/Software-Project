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
                                      <h6 class="col-sm-4"> The Rate: <% out.println(per); %></h6>
                                 
                                    <div class="actions" style="margin-top: 20px">
                                        <div class="col-sm-3">
                                       
                                             <div class="box-body">
                <select class="example-1to10" name="rating" autocomplete="off">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                </select>
              </div>
                                        </div>
                                        <button class="button btn-cart ajx-cart" title="Submit" type="Submit"><span>Submit</span></button>
                                       
                                    </div>
                                </div>
                                        </form>
                            </li> 
                           
                                        <% } %>
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