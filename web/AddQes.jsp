<%-- 
    Document   : index
    Created on : Apr 17, 2018, 2:09:53 PM
    Author     : Sohad
--%>

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
                  <div class="block-title">My Account </div>
                  <div class="block-content">
                      <ol id="recently-viewed-items">
                          <li class="item  odd"><a href="MyAccount.jsp">MyAccount</a></li>
                          <li class="item odd"><a href="AddPoly.jsp">Add Poly</a></li>
                           <li class="item  odd"><a href="MyPoly.jsp">My Polling </a></li>
                            <li class="item  odd"><a href="MyQes.jsp">My Questions </a></li>
                          <li class="item even"><a href="http://localhost:8080/WebApplication1/logOut">log out</a></li>
                      </ol>
                  </div>
              </div>
          </aside>
          <section class="col-main col-sm-9 wow bounceInUp animated">
          <div class="page-title">
            <h2>Add Question</h2>
          </div>
          <div class="static-contain">
            <fieldset class="group-select">
                <form action="AddQuestion" method="get">
                     <ul>
                <li id="billing-new-address-form">
                  <fieldset>
                  
                    <ul>
                        <li class="">
                            <label for="comment">Question<em class="required">*</em></label>
                            <br>
                            <div class="">
                                <input name="Qes" id="comment" title="Comment" class="required-entry input-text" cols="5" rows="3"/>
                            </div>
                        </li>
                      <li>
                        <div class="customer-name">
                          <div class="input-box name-firstname">
                            <label for="billing:firstname"> Option 1 :<span class="required">*</span></label>
                            <br>
                            <input type="text" id="billing:firstname" name="Option1" value="" title="Option1" class="input-text ">
                          </div>
                          <div class="input-box name-lastname">
                            <label for="billing:lastname">Option 2: <span class="required">*</span> </label>
                            <br>
                            <input type="text" id="billing:lastname" name="Option2" value="" title="Option2" class="input-text">
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="input-box">
                          <label for="billing:company">Option 3:<span class="required">*</span></label>
                          <br>
                          <input type="text" id="billing:company" name="Option3" value="" title="Option3" class="input-text">
                        </div>
                        <div class="input-box">
                          <label for="billing:email">Option 4: <span class="required">*</span></label>
                          <br>
                          <input type="text" name="Option4" id="billing:email" value="" title="Option4" class="input-text validate-email">
                        </div>
                      </li>
                    
                      
                    </ul>
                  </fieldset>
                </li>
                <li>
            
                <div class="buttons-set">
                  <button type="submit" title="Submit" class="button submit"> <span> Submit </span> </button>
                </div>
                </li>
              </ul>
                </form>
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