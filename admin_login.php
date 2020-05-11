<!DOCTYPE html>
<html>
<head>
	<title>Admin Login</title>
	  <link rel="stylesheet" href="styles.css">
    <link rel="icon" href="iA_blue.png">
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  	<meta name="viewport" content="width=device-width, initial-scale=1"/>
  	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
	</head>
	
<body>
  <div>
    <nav>
      <div class="nav-wrapper blue" >
        <li class="brand-logo" style="padding-top: 7px"><img width="50" hieght="50" src="iA_white.png"></li>
        <ul class="right hide-on-med-and-down">
        <a id="top" href="#!" class="brand-logo center" style="font-family:Roboto">iATTENDED</a></ul>
    </nav>
  </div>

  <!--Line Separator-->
  <div class="col s12 grey lighten-3" style="height:5px"></div>

  <h4 class="center">Admin Log In</h4>

<!--Form-->
<div class="container">
  <div class="row">
    <form class="col s12" action="" method="post">
      <div class="row">
        <div class="input-field col s6">
          <input id="first_name" name ="email" type="text" class="validate">
          <label for="first_name">Email Address</label>
        </div>
        <div class="input-field col s6">
          <input id="last_name" name="pass" type="password" class="validate">
          <label for="last_name">Password</label>
        </div>
        <div>
          <div class="center">
            <button class="btn waves-effect waves-light blue darken-2 " type="submit" name="submit"><a href="admin_home.html" style="color: white"> Log In</a>
          </button></div>
        </div>

      </div>
    </form>
  
</div></div>

    <!--JavaScript Component-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script>$(".button-collapse").sideNav();</script>

  </body>
</html>