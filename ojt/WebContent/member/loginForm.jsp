<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %> 

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

<%-- <link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css"> --%>
</head> 
<!-- *********************************************** -->
<body>

<!-- *********************************************** -->
 
<h2>로그인</h2>
<div class="container">
 <FORM name='frm' method='POST' action='${root}/member/loginProc.do'>
  <TABLE>
    <TR>
      <TH>아이디</TH>
      <TD><input type="text" name="id" value='${c_id_val}'>
      <c:choose>
      	<c:when test="${c_id=='Y'}">
         <input type='checkbox' name='c_id' value='Y' checked='checked'> ID 저장 
      	</c:when>
     	<c:otherwise>
         <input type='checkbox' name='c_id' value='Y' > ID 저장 
     	</c:otherwise>
      </c:choose>
     	</TD>
    
    </TR>
    <TR>
      <TH>비밀번호</TH>
      <TD><input type="password" name="passwd"></TD>
    </TR>
    
  </TABLE>
  
  <DIV class='bottom'>
    <input type='submit' value='로그인'>
    <input type='button' value='회원가입' onclick="location.href='agreement.do' ">
    <input type='button' value='이이디/패스워드 찾기' onclick="location.href='IdPasswd.do' ">
  </DIV>
   
</FORM>
<!-- *********************************************** -->
</div>
</body>
<!-- *********************************************** -->
 
</html> 