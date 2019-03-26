
<?php include 'includes/header.php'; ?>

<body class="hold-transition login-page" style="background-image: url(images/wallpaper.jpg);background-size:1920px 1080px; background-repeat:no-repeat; background-position: center center; "  >
<div class="login-box" >

  	<div class="login-box-body" style="opacity:0.8;background-color:Black">
    	<p class="login-box-msg" style="color:White" >Đăng nhập</p>

    	<form action="verify.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="email" class="form-control" name="email" placeholder="Email" required>
        		<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-5">
          			<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Đăng nhập</button>
        		</div>
      		</div>
    	</form>
      <br>
      <a href="password_forgot.php">Quên mật khẩu</a><br>
      <a href="signup.php" class="text-center">Đăng ký tài khoản</a><br>
      <a href="index.php"><i class="fa fa-home"></i> Trang chủ</a>
  	</div>
</div>
	
<?php include 'includes/scripts.php' ?>
</body>
</html>