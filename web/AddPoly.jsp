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
   <div class="main-container col2-right-layout">
    <div class="main container">
      <div class="row">
          <aside class="col-right sidebar col-sm-3 wow bounceInUp animated">
              <div class="block block-company">
                  <div class="block-title">My Account </div>
                  <div class="block-content">
                      <ol id="recently-viewed-items">
                          <li class="item  odd"><a href="MyAccount.jsp">My Account</a></li>
                          <li class="item  odd"><a href="AddQes.jsp">Add Question</a></li>
                          <li class="item  odd"><a href="MyPoly.jsp">My Polling </a></li>
                          <li class="item  odd"><a href="MyQes.jsp">My Questions </a></li>
                          <li class="item even">
                              <a href="http://localhost:8080/WebApplication1/logOut">Log out</a>
                          </li>
                      </ol>
                  </div>
              </div>
          </aside>
        <section class="col-main col-sm-9 wow bounceInUp animated">
          <div class="page-title">
            <h2>Add Poly</h2>
          </div>
          <div class="static-contain">
            <fieldset class="group-select">
                <form name="polly" action="AddPoll" method="get">
                      <ul>
                <li id="billing-new-address-form">
                  <fieldset>
                   
                    <ul>
                        <li class="">
                            <label for="comment">Poly<em class="required">*</em></label>
                            <br>
                            <div class="">
                                <input name="Poly" id="comment" title="Comment" type="text" class="required-entry input-text" cols="5" rows="3" />
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