<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html> 
<html> 
<head>  
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function incheck(f){
	if(f.passwd.value==""){
		alert("비번을 입력하세요");
		f.passwd.focus();
		return false;
	}
}
function blist(){
	var url = "list.do";
	url += "?col=${param.col}"; 
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	 
	location.href=url
}
</script> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<%-- <link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css"> --%>
</head> 
<!-- *********************************************** -->
<body>

<div class="container">
<h2>삭제</h2> 


<c:choose>
	<c:when test="${flag}">부모글을 삭제할 수 없습니다.<br><br><br></c:when>
	<c:otherwise></c:otherwise>
</c:choose>
</div>
   
    <input type='button' value='목록' onclick="blist()">

 

<DIV class="title">삭제</DIV>
<div class="content">삭제하면 복구할 수 없습니다.</div>
<FORM name='frm' method='POST' action='./deleteProc.do'
	  onsubmit="return incheck(this)"> 
<input type="hidden" name="bbsno" value="${param.bbsno}">
<input type="hidden" name="oldfile" value="${param.oldfile}">
<input type="hidden" name="col" value="${param.col}">
<input type="hidden" name="word" value="${param.word}">
<input type="hidden" name="nowPage" value="${param.nowPage}">



 
  <TABLE>
    <TR> 
      <TH>패스워드</TH>
      <TD><input type="password" name="passwd"></TD>
    </TR>
  </TABLE>
  
  <DIV class='bottom'>
    <input type='submit' value='확인'>
    <input type='button' value='취소' onclick="history.back()">
  </DIV>
</FORM>


 

</body>
<!-- *********************************************** -->
</html> 