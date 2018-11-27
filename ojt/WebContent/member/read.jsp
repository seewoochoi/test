<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %> 


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
<script type="text/javascript">
	function updateFile(id){
		var url = "updateFile.do";
		url=url+"?id=${dto.id}";
		url = url+"&oldfile=${dto.fname}";
		location.href=url;
	}
	</script>
<script type="text/javascript">
	function mupdate(){
		var url="update.do";
		url=url+"?id=${dto.id}";
		location.href=url;
	}
	function mdel(){
		var url="delete.do";
		url=url+"?id=${dto.id}";
		location.href=url;
		
	}
	</script>

<%-- <link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css"> --%>
</head> 
<!-- *********************************************** -->
<body>

<!-- *********************************************** -->
 <div class="container">
<h2>${dto.mname}의 회원정보</h2>
 
 
  <TABLE>
    <TR>
      <td colspan="2">
      <img src="./storage/${dto.fname}">
      </td>
      </tr>
     <tr>
      <TH>아이디</TH>
      <TD>${dto.id}</TD>
    </TR>
     <tr>
      <TH>이름</TH>
      <TD>${dto.mname}</TD>
    </TR>
     <tr>
      <TH>전화번호</TH>
      <TD>${dto.tel}</TD>
    </TR>
     <tr>
      <TH>이메일</TH>
      <TD>${dto.email}</TD>
    </TR>
     <tr>
      <TH>우편번호</TH>
      <TD>${dto.zipcode}</TD>
    </TR>
     <tr>
      <TH>주소</TH>
      <TD>${dto.address1}
      (${dto.address2})</TD>
    </TR>
     <tr>
      <TH>직업</TH>
      <TD>직업코드:${dto.job}
      		(${util:jobName(dto.job)})</TD>
    </TR>
     <tr>
      <TH>날짜</TH>
      <TD>${dto.mdate}</TD>
    </TR>
    
  </TABLE>
  
  <DIV class='bottom'>
    <input type='button' value='정보수정' onclick="mupdate()">
     <input type='button' value='사진수정' onclick="updateFile('${dto.id}')">
     <form name = "frm2" method="post" action="./updatePw.do">
    <input type="hidden" name ="id" value="${dto.id}">
    <input type="hidden" name ="passwd" value="${dto.passwd}">
    <input type='submit' value='패스워드변경' >
    </form>
    <input type="button" value="회원탈퇴" onclick="mdel()">
  </DIV>

<!-- *********************************************** -->
</div>
</body>
<!-- *********************************************** -->
 
</html> 