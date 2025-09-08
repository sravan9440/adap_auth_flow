[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head></head>
<body>
  <h2>Enter OTP</h2>
  <p>(Demo code: <b>123456</b>)</p>
  &lt;#if otpError?? &amp;&amp; otpError&gt;
    <p style="color:red;">Wrong OTP</p>
  <!--#if-->
  <form method="post">
    <label>One-time code <input name="code" pattern="\\d{6}" required=""></label><br><br>
    <button type="submit">Verify</button>
  </form>
</body>


</html>