<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Registration system PHP and MySQL</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="header">
    <h2>Register</h2>
  </div>
  
  <form method="post" action="groupregister.php">
    <?php include('errors.php'); ?>
    <div class="input-group">
      <label>Username</label>
      <input type="text" name="username" value="">
    </div>
    <div class="input-group">
      <label>Email</label>
      <input type="email" name="email" value="">
    </div>
     <div class="input-group">
      <label>branch</label>
      <input type="text" name="branch" value="">
    </div>
     <div class="input-group">
      <label>phone</label>
      <input type="text" name="phone" value="">
    </div>
    <div class="input-group">
      <label>Password</label>
      <input type="password" name="password_1">
    </div>
    <div class="input-group">
      <label>Confirm password</label>
      <input type="password" name="password_2">
    </div>
    <div class="input-group">
	  <input type="input" name="event" value="<?php echo $_GET['event']; ?>" style="display:none"> 
      <button type="submit" class="btn" name="reg_user">Register</button>
    </div>
  </form>
</body>
</html>

