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

<body bgcolor="red">
	
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
					<h1 class="page-title">Upload Details</h1>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">Upload profile</h3>
							<hr>
							
							<form>
							
								<div class="top-margin">
									<label>Role <span class="text-danger">*</span></label>
									<input type="text" class="form-control">
								</div>
																	
								<div class="top-margin">
									<label>Desired Job Type <span class="text-danger">*</span></label>
									<div class="radio">
								    <label><input type="radio" checked="checked" name="s">Paramenent</label>
								    </div>
								    <div class="radio">
								      <label><input type="radio" name="s">Temporary</label>
								    </div>
								</div>
								<div class="top-margin">
									<label>Preferred Work Location<span class="text-danger">*</span></label>
									<select class="form-control">
									    <option>chennai</option>
									    <option>bangalore</option>
									    <option>mumbai</option>
									    <option>delhi</option>
									 </select>
								</div>
								<div class="top-margin">
									<label>Skills<span class="text-danger">*</span></label>
									<input type="text" class="form-control">
								</div>
								<div class="top-margin">
									<label>Marital Status<span class="text-danger">*</span></label>
									<input type="text" class="form-control">
								</div>
									<div class="top-margin">
									<label>Add photo to your profile <span class="text-danger">*</span></label>
									<input type="file" accept="image/gif, image/jpeg, image/png" class="form-control">
								</div>
								<div class="top-margin">
									<label>Resume<span class="text-danger">*</span></label>
									<input type="file" accept="image/gif, image/jpeg, image/png" class="form-control">
								</div>
									</div>						
								<hr>

								<div class="row">
										<div class="col-sm-4">
								<button class="btn btn-action" type="submit">create</button>
								
								</div>
								<div class="col-sm-4">
								<button class="btn btn-action" type="submit">Update</button>
								</div>
								<div class="col-sm-4">
								<button class="btn btn-action" type="submit">Delete</button>
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