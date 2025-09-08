[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head></head>
<body>

  
  
  
	<h2>Login
	</h2>
	&lt;#if authResult?has_content &amp;&amp; authResult.error?? &amp;&amp; authResult.error&gt;
	<p id="i2yg">Invalid username or password
	</p>
	<!--#if-->
	<form method="post">
	  <label>Username <input type="text" name="username" required=""></label>
	  <br>
	  <label>Password <input type="password" name="password" required=""></label>
	  <br>
	  <br>
	  <button type="submit" id="ilipl">LOGIN</button>
	</form>
  
</body>


</html>