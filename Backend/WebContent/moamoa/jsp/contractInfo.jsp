<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="moamoa.product.ProductDTO"%>
<%@page import="moamoa.product.ProductDAO" %>
<%@page import="moamoa.contract.ContractDAO"%>
<%@page import="moamoa.contract.ContractDTO"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%	
	String mealkit_title = request.getParameter("mealkit_title");
	String main_ingredient = request.getParameter("main_ingredient");
	String mealkit_content = request.getParameter("mealkit_content");
	int mealkit_count = Integer.parseInt(request.getParameter("mealkit_count"));
	int mealkit_price= Integer.parseInt(request.getParameter("milkit_registration_amount"));
	String mealkit_sort = request.getParameter("mealkit_sort");
	
	ProductDTO Pdto=new ProductDTO();
	
	Pdto.setMealkit_num("1");
	Pdto.setPost_code("1");
	Pdto.setMealkit_title(mealkit_title);
	Pdto.setMealkit_count(mealkit_count);
	Pdto.setMealkit_price(mealkit_price);
	Pdto.setMealkit_content(mealkit_content);
	Pdto.setMain_ingredient(main_ingredient);
	Pdto.setAddition_ingredient("None");
	Pdto.setView_count(0);
	Pdto.setMealkit_sort(mealkit_sort);
	
	ContractDAO Cdao = new ContractDAO();
	Cdao.writeMealkit(Pdto);
	
	/*---------------------------------*/
	String contract_code = request.getParameter("contract_code");
	String id = "id";
	String contract_day = request.getParameter("now_date");
	String contract_facts = request.getParameter("contract_fact");
	int contract_amount = Integer.parseInt(request.getParameter("contract_amount"));
	
	ContractDTO Cdto = new ContractDTO();
	
	Cdto.setContract_code(contract_code);
	Cdto.setId(id);
	Cdto.setMealkit_title(mealkit_title);
	Cdto.setContract_day(contract_day);
	Cdto.setContract_facts(contract_facts);
	Cdto.setMilkit_registration_amount(mealkit_price);
	Cdto.setContract_amount(contract_amount);
	
	Cdao.writeContract(Cdto);
	%> 
		<script>
		alert("?????? ?????? ??????????????.");
		</script> <%
		response.sendRedirect("../mainpage/index.html");
%>
</body>
</html>