<%-- 
    Document   : index
    Created on : Apr 17, 2018, 2:09:53 PM
    Author     : Samar
--%>

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
                <aside class="col-right sidebar col-sm-3 wow bounceInUp animated">
                    <div class="block block-company">
                       <% String user=(String)session.getAttribute("userid");  %>
                  <div class="block-title">My Account <%out.println(user);%></div>
                        <div class="block-content">
                            <ol id="recently-viewed-items">
                                <li class="item odd"><a href="AddPoly.jsp">Add Poly</a></li>
                                <li class="item  odd"><a href="AddQes.jsp">Add Question</a></li>
                                <li class="item  odd"><a href="MyQes.jsp">My Questions </a></li>
                                <li class="item  odd"><a href="MyPoly.jsp">My Polling </a></li>
                                <li class="item even"><a href="http://localhost:8080/WebApplication1/logOut">log out</a></li>
                            </ol>
                        </div>
                    </div>
                </aside>
                <section class="col-main col-sm-9 wow bounceInUp animated">
                    <div class="category-description std">
                      
                    </div>
                    <div class="category-title">
                        <h1>My Account </h1>
                    </div>
                    <div class="category-products">
                   
                        <ol id="products-list" class="products-list">
                            
                            <li class="item odd">
                                <div class="product-shop">
                                    <h2 class="product-name"><a title=" Sample Product" href="product_detail.html">Welcome in Your page </a></h2>
                                    <div class="price-box"> <span class="regular-price" id="product-price-153"> <span class="price">Your Id : <%out.println(user);%></span> </span> </div>
                                    
                                    
                                </div>
                            </li>
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