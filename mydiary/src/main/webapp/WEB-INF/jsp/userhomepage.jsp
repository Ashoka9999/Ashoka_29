<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
<br/>
<div class="userhome">
<%-- Welcome ${user.username} --%>

 Welcome <span style="color:steelblue"> ${user.username}</span><!-- ${user} it is from controller model.addObject("user", user1.getUsername()); -->
<a href="./signout" style="color:red;float:right">Signout</a>
<br/><br/>

<span class="heading">List of Past Entries</span>
<a href="./addentry"><button type="button" class="addbtn">Add Entry</button></a>
<br/><br/>
<!-- in this way we will retrive date from list  -->

<table border="1" width="99%">
<tr>
<th>Date</th>
<th colspan="3">Actions</th>
</tr>

<c:if test="${entrieslist.size()==0}">
<tr><td style="font-size:20px;color:green;text-align:center"  colspan="3">User not added any Diary entries till now.</td></tr>
</c:if>

<c:forEach items="${entrieslist}" var="e">
<tr>
<td> 
<fmt:formatDate value="${e.entrydate}" pattern="dd/MM/yyyy"/>
 </td>
  
<td><a href="./viewentry?id=${ e.id }">View</a></td>
<td><a href="./updateentry?id=${ e.id }">Update</a></td>
<td><a href="./deleteentry?id=${ e.id }">Delete</a></td>
</tr>

</c:forEach>
</table>

</div>
	

</body>
</html>

