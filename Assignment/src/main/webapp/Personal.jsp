<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Sign in - Progressus Bootstrap template</title>

	<link rel="shortcut icon" href="resources/images/gt_favicon.png">
	
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="resources/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="resources/css/main.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>

<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
 $(document).ready(
			function() {
				 $('#submit').click(function() {
					 submit();
				 });
				 $('#update').click(function() {
					 update();
				 });
				 $('#del').click(function() {
					 del();
				 });
    	
 var search = {};

 function submit() {
 	
 		alert("came");
     	search["name"]=$('#name').val();
 		search["email"] = $('#email').val();
 		search["password"] = $('#password').val();
 		search["dob"] = $('#dob').val();
  		search["gender"] =$('input[name=gender]:checked').val();
 		search["phone"] = $('#phone').val();
 		search["address"] = $('#address').val();
 		search["country"] = $('#country').val();
 		search["hobbies"] =$('.Checkbox:checked').map(function() {return this.value;}).get().join(',')
 		//search["hobbies"] = $('input[name=hobbies]:checked').val();
 		alert(hobbies);
 			$.ajax({
 			type : "POST",
 			contentType : "application/json",
 			url : "http://localhost:8080/PublishSocialMedia/create",
 			data : JSON.stringify(search),
 			dataType : 'json',
 			timeout : 100000,
 			complete: function(data) {
 				if(data)
 					{
 					
 					}
 			 		}
 		});

 }	

var search1 = {};

 function update() {
	 	
		alert("came");
  		search1["name"]=$('#name').val();
		search1["email"] = $('#email').val();
		search1["password"] = $('#password').val();
		search1["dob"] = $('#dob').val();
		search1["gender"] =$('input[name=gender]:checked').val();
		search1["phone"] = $('#phone').val();
		search1["address"] = $('#address').val();
		search1["country"] = $('#country').val();
		search1["hobbies"] = $('#hobbies:checked').val();
		alert();
		$.ajax({
			type : "POST",
			contentType : "application/json",
	
			url : "http://localhost:8080/PublishSocialMedia/update",
			data : JSON.stringify(search1),
			dataType : 'json',
			timeout : 100000,
			complete: function(data) {
				if(data)
					{
					
					}
				
				}
		});

}
 
 var search2 = {};

 function del() {
	 	
		alert("came");
  		search2["name"]=$('#name').val();
		search2["email"] = $('#email').val();
		search2["password"] = $('#password').val();
		search2["dob"] = $('#dob').val();
		search2["gender"] =$('input[name=gender]:checked').val();
		search2["phone"] = $('#phone').val();
		search2["address"] = $('#address').val();
		search2["country"] = $('#country').val();
		search2["hobbies"] = $('#hobbies').val();

		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "http://localhost:8080/PublishSocialMedia/del",
			data : JSON.stringify(search2),
			dataType : 'json',
			timeout : 100000,
			complete: function(data) {
				if(data)
					{
					
					}
				}
		});
}
});
 </script>
<body>
	
	<!-- container -->
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li class="active">User access</li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title">Personal Details</h1>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">Enter Your Personal Details</h3>
							<hr>
							
							<form>
								<div class="top-margin">
									<label>Name <span class="text-danger">*</span></label>
									<input type="text" class="form-control" id="name" name="name">
								</div>
								<div class="top-margin">
									<label>Email ID <span class="text-danger">*</span></label>
									<input type="email" class="form-control" id="email" name="email">
								</div>
								<div class="top-margin">
									<label>Password <span class="text-danger">*</span></label>
									<input type="password" class="form-control" id="password" name="password">
								</div>
								<div class="top-margin">
									<label>DOB<span class="text-danger">*</span></label>
									<input type="date" class="form-control" id="dob" name="dob">
								</div>
								<div class="top-margin">
									<label>Gender <span class="text-danger">*</span></label>
									<div class="radio">
								    <label><input type="radio" id="gender" name="gender" value="male">Male</label>
								    </div>
								    <div class="radio">
								      <label><input type="radio"  id="gender" name="gender" value="female">Female</label>
								    </div>
									
								</div>
								<div class="top-margin">
									<label>Phone Number<span class="text-danger">*</span></label>
									<input type="number" class="form-control" id="phone" name="phone">
								</div>
								<div class="top-margin">
									<label>Address<span class="text-danger">*</span></label>
									<div class="top-margin">
									<textarea placeholder="Address..." class="form-control" rows="5" id="address" name="address"></textarea>
								</div>
								</div>
								
								<div class="top-margin">
									<label>Country<span class="text-danger">*</span></label>
									<select class="form-control" id="country" name="country">
									    <option>India</option>
									    <option>Australia</option>
									    <option>South Africa</option>
									    <option>England</option>
									 </select>
								</div>
								<div class="top-margin">
									<label>Hobbies<span class="text-danger">*</span></label>
									<div class="checkbox">
									      <label><input type="checkbox" value="Reading" id="hobbies" name="hobbies">Reading</label>
									    </div>
									    <div class="checkbox">
									      <label><input type="checkbox" value="Writing" id="hobbies" name="hobbies">Writing</label>
									    </div>
								</div>
								
								<hr>

								<div class="row">
										<div class="col-sm-4">
								<button class="btn btn-action" id="submit">create</button>
								
								</div>
								<div class="col-sm-4">
								<button class="btn btn-action" id="update">Update</button>
								</div>
								<div class="col-sm-4">
								<button class="btn btn-action" id="del">Delete</button>
								</div>
								</div>
								</form>
								</div>
								</div>
								</div>
						</article>
					</div>
				</div>
									
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="resources/js/headroom.min.js"></script>
	<script src="resources/js/jQuery.headroom.min.js"></script>
	<script src="resources/js/template.js"></script>
</body>
</html>