<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %> 
<c:choose>
	<c:when test="${empty str}">
<jsp:forward page="/member/createProc.do" />
</c:when>
	<c:otherwise>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-family: ; 
  font-size: 24px; 
} 
</style> 

<link href="${root}/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<!-- *********************************************** -->
<body>

<!-- *********************************************** -->
  <div class="container">
<h2>아이디 및 이메일 중복 검사</h2>
 

${str}
 <br>
 <br>
    <input type='button' value='다시시도' onclick="history.back() ">

</div>
<!-- *********************************************** -->

</body>
<!-- *********************************************** -->
 
</html> 
</c:otherwise>
</c:choose>
