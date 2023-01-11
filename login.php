<html>
<head>

<title>Tryout Online DISPENDIK SURABAYA</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="assets/images/dinas.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/images/dinas.png">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/all.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/plugins/slider/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/plugins/slider/css/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />

	
<script type="text/javascript" src="assets/jquery/jquery-2.0.2.min.js"></script>
<!-- tambah kode ini  -->
<script type = "text/javascript" >

   function preventBack(){window.history.forward();}

    setTimeout("preventBack()", 0);

    window.onunload=function(){null};

</script>

<!-- sampai disini -->

<script type="text/javascript">
$(function(){
   $('.alert').hide();
   $('.login-form').submit(function(){
      $('.alert').hide();
      if($('input[name=username]').val() == ""){
         $('.alert').fadeIn().html('Kotak input <b>Username</b> masih kosong!');
      }else if($('input[name=password]').val() == ""){
         $('.alert').fadeIn().html('Kotak input <b>Password</b> masih kosong!');
      }else{
         $.ajax({
            type : "POST",
            url : "login_cek.php",
            data : $(this).serialize(),
            success : function(data){
               if(data == "admin") window.location = "admin/index.php";	
               else if(data == "guru") window.location = "guru/index.php";
			   else if(data == "siswa") window.location = "index.php";
			   else $('.alert').fadeIn().html(data);	
            }
         });
      }
      return false;
   });
});
</script>


</head>
<body class="form-login-body"> 
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 mx-auto login-desk">
                       <div class="row">
                            <div class="col-md-7 detail-box">
                                <img class="logo" src="assets/images/logo.png" alt=""> 
                                <div class="detailsh">
                                     <img class="help" src="assets/images/logotryouts.png" alt="">
                                    <h3>Tryout Online</h3>
                                    <p>DINAS PENDIDIKAN KOTA SURABAYA</p>
                                </div>
                            </div>
                            <div class="col-md-5 loginform">
                                 <h4>LOGIN</h4>                   
                                 <p>Masukkan Username & Password</p>
                                 <form class="login-form">   
                                 <div class="login-det">
                                    <div class="form-row">
                                         <label for="">Username</label>
                                             <div class="input-group mb-3">
                                              <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">
                                                    <i class="far fa-user"></i>
                                                </span>
                                              </div>
                                        <input type="text" name="username" placeholder="NIS/NIP" autofocus class="form-control">
                                  </div>
                           </div>
	
                                 <div class="form-row">
                                         <label for="">Password</label>
                                             <div class="input-group mb-3">
                                              <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">
                                                    <i class="fas fa-lock"></i>
                                                </span>
                                              </div>
                                       <input type="password" name="password" placeholder="Password" class="form-control">
                                    </div>
                                 </div><br/>
                                    
   <div class="input-group">
      <div class="input-group-addon"><i class="glyphicon glyphicon-download"></i></div>
	  <select class="form-control" name="akses" required>
		<option value="">======= Login Sebagai =======</option>
		<option value="admin">Admin</option>
		<option value="guru">Guru</option>
		<option value="siswa">Siswa</option>
	</select>
   </div><br/>

   <button class="btn btn-sm btn-danger">
      <i class="glyphicon glyphicon-log-in"></i> Login 
   </button><br/>
   
</form>
                                    
                                  
                                    
                                 </div>
                            </div>
                       </div>
                      
                    </div>
                </div>
            </div>
    </body>

    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="assets/plugins/slider/js/owl.carousel.min.js"></script>
    <script src="assets/js/script.js"></script>
</html>
   
</form>
 
   </div>
</div>

      </div>
   </div>
</div>

</body>
</html>
