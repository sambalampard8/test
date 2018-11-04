<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

        <script src="assets/js/angular.js" type="text/javascript" ></script>
<title>Insert title here</title>





<script type="text/javascript">
$(document).ready(function(){
	
	$('#btthello').click(function(){
		var fullname=$('#fullname').val();
		$.ajax({
			type:'POST',
			data:{fullname:fullname},
			url:'zte',
			success:function(result){
				$('#result1').html(result);
			}
			
			
		});
		
	});
	
});

</script>


</head>
<body ng-app>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>

<br>

<form method="POST">
Name<input type="text" id="fullname"/>
<input type="button" value="hello" id="btthello">
<br>

</form>

<br>
Name<input type="text" ng-model="montest"/>
{{montest}}

<span id="result1"></span>
</body>
</html>