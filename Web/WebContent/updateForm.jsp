<%@page import="com.itwillbs.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>회원수정 페이지</h2>
    <%
       // 로그인 체크
       String id = (String)session.getAttribute("loginID");
     
       // 기존의 회원정보 화면 출력
       // MemberDAO 객체 생성
       MemberDAO dao = new MemberDAO();
       
       
     %>
     
    
    <fieldset>
         <form action="updatePro.jsp" method="post" name="fr">
           <table border="1">
           <tr>
           <th>아이디</th>
           <td colspan="3"><span class="bold">
           </span></td>
           <tr>
           <tr>
			 <th>생년월일</th>
			 <td></td>
			 <th>이름</th>
			 <td></td>
		   </tr>
		   <tr>
			 <th>변경할 비밀번호</th>
			 <td>
			   <input type="password" name="pw1" id="pw1" value="" />
			 </td>
			 <th>비밀번호 확인</th>
			 <td>
			   <input type="password" name="pw2" id="pw2"value="" />
			 </td>
		   </tr>
		   <tr> 
			 <th>주소</th> 
			 <td colspan="3">
			 <ul class="addrTel">
			   <li class="vm_box">
			   <label style="width:60px;">우편번호</label> 
			     <input type="text" name="ZIP" maxlength="8" ReadOnly /> 
			     <a href="javascript:openDaumPostcode();" class="btnSmall vm"><span>우편번호 검색</span></a>
			   </li>
			   <li>
			   <label style="width:60px;">주소</label> 
			     <input type="text" name="adr1" maxlength="100" ReadOnly />
			   </li>
			   <li>
			   <label style="width:60px;">상세주소</label> 
			     <input type="text" name="adr2" maxlength="100"/><br />
			   <label style="width:50px;"></label>
			   </li>
			 </ul>
			 </td> 
			</tr>
           </table>
           <input type="submit" value="회원수정하기">
         </form>
     </fieldset>
     
    <script type="text/javascript">
        // alert("document.fr.pw.value : "+document.fr.pw.value);
        function checkData(){
        	var pw = document.fr.pw.value;
        	
        	if(pw == "" || pw.length<1){
        		alert("비밀번호를 입력하세요.");
        		document.fr.pw.focus();
        		return false;
        	}
        }
     </script>
     
</body>
</html>