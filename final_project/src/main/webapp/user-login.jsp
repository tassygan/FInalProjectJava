<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/header.jsp"></jsp:include>
<body class="text-center">
<br><br>
<form class="form-signin">
	<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
	<label for="inputEmail" class="sr-only">Login</label>
	<input type="text" id="inputEmail" class="form-control" placeholder="Login" required autofocus>
	<label for="inputPassword" class="sr-only">Password</label>
	<input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
	<div class="checkbox mb-3">
		<label>
			<input type="checkbox" value="remember-me"> Remember me
		</label>
	</div>
</form>
	<a href = "index.jsp"><button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button></a>

<jsp:include page="/footer.jsp"></jsp:include>