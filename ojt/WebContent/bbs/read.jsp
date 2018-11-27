<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>

<!DOCTYPE html> 
<html>  
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">

function blist(){   
	var url = "list.do";
	url = url + "?col=${param.col}";
	url = url + "&word=${param.word}";
	url = url + "&nowPage=${param.nowPage}";
	location.href=url; 
	
}
function fileDown(){
	var url = "${root}/download";
	url = url + "?filename=${dto.filename}"; 
	url = url + "&dir=/bbs/storage";
	
	location.href= url;
}

function breply(){
	var url = "reply.do";
	url= url+ "?bbsno=${dto.bbsno}";
	url= url + "&col=${param.col}";
	url= url + "&word=${param.word}";
	url= url + "&nowPage=${param.nowPage}";
	
	
	location.href=url;
	
}
function bupdate(){
	var url = "update.do";
	  
	url= url + "?bbsno=${dto.bbsno}";
	url= url + "&col=${param.col}";
	url= url + "&word=${param.word}";
	url= url + "&nowPage=${param.nowPage}";

	
	location.href =url;
	
} 
function bdel(){
	var url = "delete.do";
	url = url+ "?bbsno=${dto.bbsno}";
	url = url+ "&oldfile=${dto.filename}";
	url= url + "&col=${param.col}";
	url= url + "&word=${param.word}";
	url= url + "&nowPage=${param.nowPage}";
	
	location.href= url;
	
}
</script>
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style>  
<%-- <link href="<%=root}/css/style.css" rel="Stylesheet" type="text/css"> --%>
</head> 
<!-- *********************************************** -->
<body>
<div class="container">
 <h2>조회</h2>


 
  <TABLE class="table" style="width:60%; padding:20px">
    <TR>
      <TH>제목</TH>
      <TD>${dto.title}</TD>
    </TR> 
    <TR>
      <TH>내용</TH>
      <TD>${dto.content}</TD>
    </TR>
    <TR>
      <TH>성명</TH>
      <TD>${dto.wname}</TD>
    </TR>
    <TR>
      <TH>조회수</TH>
      <TD>${dto.viewcnt}</TD>
    </TR>
    <TR>
      <TH>등록일</TH> 
      <TD>${dto.wdate}</TD>
    </TR>
    <TR>
      <TH>파일</TH> 
      <TD>
      <c:choose>
      	<c:when test="${not empty dto.filename}">
      	<a href="javascript:fileDown()">
    ${dto.filename}</a> 
    (${dto.filesize/1024}) KB)
    </c:when>
      	<c:otherwise>파일없음</c:otherwise>
      </c:choose>
     
      </TD>
    </TR>
  </TABLE>

  <DIV class='bottom'>
    <input type='button' value='목록' onclick="blist()">
    <input type='button' value='등록' onclick="location.href='create.do'">
    <button onclick="bupdate()">수정</button>
    <button onclick="bdel()">삭제</button>
    <button onclick="breply()">답변</button>
     
  </DIV>

 </div>
</body>
<!-- *********************************************** -->
</html> 