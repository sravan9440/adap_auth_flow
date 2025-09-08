[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head></head>
<body>
  <h2>Login</h2>
  &lt;#if authResult?has_content &amp;&amp; authResult.error?? &amp;&amp; authResult.error&gt;
    <p style="color:red;">Invalid username or password</p>
  <!--#if-->
  <form method="post">
    <label>Username <input name="username" required=""></label><br>
    <label>Password <input name="password" type="password" required=""></label><br><br>
    <button type="submit">Continue</button>
  </form>
</body>


</html>