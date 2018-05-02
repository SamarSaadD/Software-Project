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
<section class="main-container col1-layout">
    <div class="main container">
      <div class="account-login">
        
        <fieldset class="col2-set">
         
            <form name="myForm" action="check.jsp" method="post">
                  <div class="col-1 col-sm-offset-3 registered-users"><strong>Registered Student</strong>
            <div class="content">
              <p>If you have an account with us, please log in.</p>
              <ul class="form-list">
                <li>
                  <label for="email">Email Address <span class="required">*</span></label>
                  <br>
                  <input type="text" title="Email Address" class="input-text required-entry" id="email" value="" name="Id">
                </li>
                <li>
                  <label for="pass">Password <span class="required">*</span></label>
                  <br>
                  <input type="password" title="Password" id="pass" class="input-text required-entry validate-password" name="Passwords">
                </li>
              </ul> 
              <div class="buttons-set">
                <button id="send2" name="send" type="submit" class="button login"><span>Login</span></button>
               </div>
            </div>
          </div>
                
            </form>
        </fieldset>
      </div>
      <br>
      <br>
      <br>
      <br>
      <br>
    </div>
  </section>
﻿﻿<%@ include file="footer.jsp"%>
</div>
</body >
</html>