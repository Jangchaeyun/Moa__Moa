<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>��ŰƮ ���</title>
<script type="text/javascript">
	var openlist;
	function mealkit_list_open(){
		window.name = "parentForm";
		parentForm = window.open("con_post_list.jsp", "post_list", "width=800, height= 500, top=50, left=50");
	}

	let today = new Date();
	
	var year = today.getFullYear();
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);

	var dateString = year + '-' + month  + '-' + day;
	document.getElementById("now_date").value = dateString;
</script>
</head>
<body>
	<div class="jumbotron"> 
		<div class="container">
			<h1 class="display-3">��ŰƮ ���</h1>
		</div>
	</div>
	<div class="container">
	<!--action="../jsp/postWrite.jsp"  -->
		<form method="post" class="form-horizontal" 
			action="contractInfo.jsp">
			<input type="hidden" name="cartId" value="${param.cartId}">
			<div class="form-group row">
				<label class="col-sm-2">��� ��ŰƮ</label>
				<div class="col-sm-3">
					<input type="text" id="pInput" name="contract_code" class="form-control" readonly/>
					<input type="button" name="name" class="form-control" onclick="mealkit_list_open();" value="������ ����" />
				</div>
			</div>
			<div class="form-group row">
			<%
			Date nowTime = new Date();
			SimpleDateFormat sf = new SimpleDateFormat("yyyy�� MM�� dd�� a hh:mm:ss");
			
			%>
			
				<label class="col-sm-2">�����</label>
				<div class="col-sm-3">
					<input type="text" style="width: 90%; border-left-width:0; ��border-right-width:0; ��border-top-width:0; ��border-bottom-width:1;" id="now_date" name="now_date" class="form-control" value="<%= sf.format(nowTime) %>" readonly />
				</div>
			</div>	
			<br>
			<div class="form-group row">
				<label class="col-sm-2">��� ����</label>
				<div class="col-sm-3">
					<input type="text" style="width: 90%;border-left-width:0; ��border-right-width:0; ��border-top-width:0; ��border-bottom-width:1;" name="contract_fact" class="form-control" />
				</div>
			</div>	
			<br>
			<div class="form-group row">
				<label class="col-sm-2">��ŰƮ �� ����</label>
				<div class="col-sm-3">
					<input type="text" style="width: 90%;border-left-width:0; ��border-right-width:0; ��border-top-width:0; ��border-bottom-width:1;" name="milkit_registration_amount" class="form-control" />
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2">��� �ݾ�</label>
				<div class="col-sm-3">
					<input type="text" style="width: 90%;border-left-width:0; ��border-right-width:0; ��border-top-width:0; ��border-bottom-width:1;" name="contract_amount" class="form-control" />
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2">��ŰƮ ����</label>
				<div class="col-sm-3">
					<input type="text" style="width: 90%;border-left-width:0; ��border-right-width:0; ��border-top-width:0; ��border-bottom-width:1;" name="mealkit_count" class="form-control" />
				</div>
			</div>
			<div>
                                <p>
                                    <strong>���� : </strong>
                                    <input type="text" name="mealkit_title" id="mealkit_title" placeholder="������ �Է����ּ���" style="width: 90%;">
                                </p>
                                <p>
                                    <strong>��� : </strong>
                                    <input type="text" name="main_ingredient" id="main_ingredient" placeholder="��Ḧ �Է����ּ��� (�� : ���, �ٳ���)" style="width: 90%;">
                                </p>
                                <p>
                                    <strong>���� : </strong>
                                <textarea id="txtContent" name="mealkit_content" id="mealkit_content" rows="10" cols="100" style="width: 100%; height: 600px;"></textarea>
                                </p>
                                <hr>
                                <p>
                                    <strong>ī�װ� : </strong>
                                    <select name="mealkit_sort" id="mealkit_sort">
                                        <option>����</option>
                                        <option>���</option>
                                        <option>�߽�</option>
                                        <option>�ѽ�</option>
                                        <option>�Ͻ�</option>
                                        <option>����Ʈ</option>
                                        <option>��Ÿ</option>
                                    </select>
                                </p>
                                <!-- <p>
                                    <strong>�ؽ��±� : </strong>
                                    <input type="text" placeholder="�ؽ��±׸� �Է��ϼ���" style="width: 30%;">
                                    <input type="button" value="���">
                                </p>
                                <p>
                                    <strong>÷������ : </strong>
                                    <input type="button" value="���� ����">
                                    ���õ� ���� ����
                                </p>
                                <p>
                                    <strong>��ũ : </strong>
                                    <input type="text" placeholder="��ũ�� �Է��ϼ���" style="width: 30%;">
                                    <input type="button" value="���">
                                </p> -->
                                <hr>
			<div class="form-group row">
				<div class="col-sm-offset2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="���" />
				</div>
			</div>
		</form>
	</div>
</body>
</html>