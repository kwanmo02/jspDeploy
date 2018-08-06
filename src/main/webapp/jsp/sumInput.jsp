<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">

		<form class="form-signin" action="/sumCalculationServelt" method="post">
			<h2 class="form-signin-heading">Please sign in</h2>
			
			<label for="StartNum" class="sr-only">StartNum</label> 
			<input type="text" name="startNum" id="startNum" class="form-control" laceholder="startNum" required autofocus> 
			
			<label	for="EndNum" class="sr-only">EndNum</label> 
			<input type="text" name="EndNum" id="EndNum" class="form-control" placeholder="EndNum" required>
				
				
			<div class="checkbox">
				<!-- <label> <input type="checkbox" value="remember-me">
					Remember me
				</label> -->
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">확인</button>
		</form>

	</div>
	
</body>
</html>