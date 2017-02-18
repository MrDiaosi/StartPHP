<!--简单登录验证跳转-->
login.php

<?php 
	session_start();
	define("USER", "tao");
	define("PASS", "111");
	if (isset($_POST['user']) && isset($_POST['pass'])) {
		 if ($_POST['user']==USER && $_POST['pass']==PASS) {
			$_SESSION['AUTHENTICATED']=TRUE;
		 	header("Location: index.php");
		  } 
	} 
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>LOGIN</title>
</head>
<body>
	<div align="center">
		<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
			<!--判断第一次提交表单有填写且password未填写，还可细化对用户名等--!>
			<?php if (isset($_POST['user']) && !$_POST['pass']) { ?>
				<b>Please input your password.</b><br />
				user:<input type="text" name="user" value="<?php echo $_POST["user"]; ?>"><br />
			<?php } else { ?>
				user:<input type="text" name="user"><br />
			<?php } ?>
				pass:<input type="password" name="pass"><br />
				<input type="submit">
		</form>
	</div>
</body>
</html>

welcome.php
<?php 
    session_start();
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Demo</title>
</head>
<body>
  <div align="center">
    <?php 
      if (isset($_SESSION['AUTHENTICATED']) && $_SESSION['AUTHENTICATED']==TRUE) { ?>
        <font color="red">You are logged in!</font><br />
        <a href="/">LOG OUT</a><br />
    <?php } else { ?>
        <font color="red">You are not logged in!</font><br />
        <a href="demo.php">LOGIN</a><br />
    <?php } ?>
  </div>
</body>
</html>

