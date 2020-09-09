<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="padding: 15px">
		<div class="row">
			<h1>welcome <span id="user"></span></h1> &ensp;
			<a href="/logout" class="btn btn-danger">Logout</a>
		</div>
	</div>
	
	
	<script type="text/javascript">
    $.get("/user", function(data) {
        $("#user").html(data.userAuthentication.details.name);
        $(".unauthenticated").hide()
        $(".authenticated").show()
    });

</script>
</body>
</html>