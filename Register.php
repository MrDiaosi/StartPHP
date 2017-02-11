Register.php


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Register</title>
</head>
<body>
	<div align="center">
		<form action="inform.php" method="post">
			name: <input type="text" name="name">
			<br />
			gender:
				<input type="radio" name="gender" value="f">female
				<input type="radio" name="gender" value="m">male
			<br />
			email: <input type="email" name="email">
			<br />
			captain: <input type="checkbox" name="captain">
			<br />
			Home:
				<select name="home" >
					<option value="ah">Anhui</option>
					<option value="sd">Shandong</option>
					<option value="fj">Fujian</option>
				</select>
			<br />
			Intro:
				<textarea name="intro" cols="30" rows="10"></textarea>
			<br />
			<input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;<input type="reset" value="reset">
		</form>
	</div>
</body>
</html>

Inform.php

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Infor</title>
</head>
<body>
	Your name is : <?php print($_POST['name']); ?>
	<br />
	<?php 
		if (isset($_POST['captain'])) {//判断是否有在captain选项打勾
echo "Come on,capatin!";
		}
	 ?>
	<?php 
	print("<pre>");
		print_r($_POST);
	print("</pre>");
	 ?>
</body>
</html>
