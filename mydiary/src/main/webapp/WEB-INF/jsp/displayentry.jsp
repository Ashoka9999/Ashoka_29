<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyDiary App Homepage</title>
<link rel="stylesheet" href="<c:url value="/css/style.css"/>">
</head>
<body>
<div class="header">

<div class="first">
<img alt="" src="<c:url value="/images/diary.jpg"/> " width="60" heght="60">
</div>


<div class="second">My Diary App</div>

</div>
<br/><br/>
<hr/>
 <h1> Welcome  <span style="color:steelblue">${user.username}</span> </h1>
 <a href="./signout" style="color:red;float:right">Signout</a>
 
<div class="bodypart">
<div class="bodypart1">
<img alt="" src="<c:url value="/images/diary.jpg"/> " >

</div>
<div class="bodypart2">
<h1>VIEW ENTRY</h1><br/><br/><br/>
<table>
<tr><td>Date:</td><td>${ entry.entrydate }</td></tr>
<tr><td>Description:</td><td>${ entry.description } </td></tr>

</table>
<br/><br/><br/>
<a href="./userhome"><button type="button">BACK TO HOME</button></a>

</div>

</div>

</body>
</html>