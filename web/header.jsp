  <!-- Header -->
  <%@page import="javaClass.User"%>
  <header class="header-container">
    <div class="header-top">
      <div class="container">
        <div class="row"> 
          <!-- Header Language -->
          <div class="col-xs-6">
           
            <div class="welcome-msg hidden-xs"> welcome to online voating system! </div>
          </div>
          <div class="col-xs-6"> 
            
            <!-- Header Top Links -->
            <div class="toplinks">
              <div class="links">
                     
              <%  
				if ((session.getAttribute("userid") != null)){
				//if (log.equals("Profile")){
					out.print ("  <div class=\"login\"><a title=\"Login\" href=\"MyAccount.jsp\"><span  class=\"hidden-xs\">MyAccount</span></a></div>" );
                                     //   }
                               // else {out.print ("<li ><a href=\"#\" data-toggle=\"modal\" data-target=\"#login-modal\">Login</a></li>" );}
				}
                                else out.print ("  <div class=\"login\"><a title=\"Login\" href=\"login.jsp\"><span  class=\"hidden-xs\">Log In</span></a></div>" );
				%>
              </div>
            </div>
            <!-- End Header Top Links --> 
          </div>
        </div>
      </div>
    </div>
    <div class="header container">
      <div class="row">
        <div class="col-sm-6"> 
          <!-- Header Logo --> 
          <a class="logo" title="Magento Commerce" href="index.jsp"><img alt="Magento Commerce" class="img-responsive" src="images/logo.png"></a> 
          <!-- End Header Logo --> 
        </div>
        <div class="col-sm-6"> 
          <!-- Search-col -->
          <div class="search-box">
            <form action="cat" method="POST" id="search_mini_form" name="Categories">
              <input type="text" placeholder="Search here..." value="" maxlength="70" class="" name="search" id="search">
              <button id="submit-button" class="search-btn-bg"><span>Search</span></button>
            </form>
          </div>
          <!-- End Search-col --> 
        </div>
     
      </div>
    </div>
  </header>
  <!-- end header --> 
   <!-- Navbar -->
  <nav>
    <div class="container">
      <div class="nav-inner">
        <div class="logo-small"> <a class="logo" title="Magento Commerce" href="index.jsp"><img alt="Magento Commerce" src="images/logo.png"></a> </div>
        <!-- mobile-menu -->
        <div class="hidden-desktop" id="mobile-menu">
          <ul class="navmenu">
            <li>
              <div class="menutop">
                <div class="toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></div>
                <h2>Menu</h2>
              </div>
              <ul class="submenu">
                <li>
                  <ul class="topnav">
                      <li class="level0 nav-2 level-top first parent"> <a class="level-top" href="index.jsp"> <span>home</span> </a> </li>
                      <li class="level0 nav-4 level-top "> <a class="level-top" href="about.jsp"> <span>About</span> </a> </li>
                    <li class="level0 nav-6 level-top first parent"> <a class="level-top" href="polling.jsp"> <span>Polling</span> </a> </li>
                    <li class="level0 nav-10 level-top "> <a class="level-top" href="Question.jsp"> <span>Questions</span> </a> </li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <!--navmenu--> 
        </div>
        
        <!--End mobile-menu -->
        <ul id="nav" class="hidden-xs">
          <li id="nav-home" class="level0 parent drop-menu"><a href="index.jsp" class="active"><span>Home</span> </a> </li>
            <li class="level0 parent drop-menu"><a href="about.jsp"><span>About</span> </a>
            <li class="level0 parent drop-menu"><a href="polling.jsp"><span>Polling</span> </a> </li>
            <li class="level0 parent drop-menu"><a href="Question.jsp"><span>Questions</span> </a>

            </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- end nav -->  
  
  