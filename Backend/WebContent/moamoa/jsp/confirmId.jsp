<%@page import="moamoa.signup.SignupDAO"%>
<%@page import="moamoa.signup.SignupDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("join_id");
	
	SignupDTO dto=new SignupDTO();
	
	dto.setJoin_id(id);

	SignupDAO dao = new SignupDAO();
	
	
	
	if(dao.loginCheckId(id)){
		out.println("<script>");
		out.println("alert('���̵� �ߺ��˴ϴ�. �ٸ� ���̵� �������ּ���')");
		//out.println("location.href='../indpage/ind_signup_step2.html'");
		out.println("window.history.back()");
		out.println("</script>");
		//response.sendRedirect("../indpage/ind_signup_step2.html");
		System.out.println("confirmID.jsp���̵��ߺ�");
	}else{
		out.println("<script>");
		out.println("alert('��� ������ ���̵��Դϴ�.')");
		//out.println("location.href='../indpage/ind_signup_step2.html'");
		out.println("window.history.back()");
		out.println("</script>");
		System.out.println("confirmID.jsp���̵��ߺ� ��� ����");
	}
%>
<script>
window.close();
</script>
</body>
</html>