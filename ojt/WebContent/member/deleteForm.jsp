<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %> 

<!DOCTYPE html> 
<html> 
<head> dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd

<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-family: ; 
  font-size: 24px; 
} 
</style> 


<!-- *********************************************** -->
<body>

<!-- *********************************************** -->
 
<div class="container">
<h2>회원탈퇴</h2>
 
 <FORM name='frm' method='POST' action='./deleteProc.do'>
 <input type="hidden" name="id" value="${id}"/>
탈퇴를 하시면 더이상 컨텐츠를 제공 받을 수 없습니다.<br>
그래도 탈퇴를 원하시면 아래 버튼을 클릭하세요

  <DIV class='bottom'>
    <input type='submit' value='탈퇴'>
    <input type='button' value='취소' onclick="history.back()">
  </DIV>
</FORM>
<!-- *********************************************** -->
</div>
</body>
<!-- *********************************************** -->
 
</html> 