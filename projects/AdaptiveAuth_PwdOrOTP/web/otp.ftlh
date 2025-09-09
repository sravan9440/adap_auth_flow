[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head></head>
<body>
  <h2>One-Time Password</h2>
  <p>Higher-risk sign-in detected. Enter the 6-digit code.</p>
  <form method="post">
    <input name="code" pattern="\d{6}" maxlength="6" required="">
    <button type="submit">Verify</button>
  </form>
</body>


</html>