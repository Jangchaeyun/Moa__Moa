<%@page import="java.text.DecimalFormat"%>
<%-- <%@page import="kr.gov.dto.Product"%> --%>
<%@page import="moamoa.product.ProductDTO"%>
<%@page import="moamoa.product.ProductDAO" %>
<%@page import="moamoa.cart.CartDAO" %>
<%@page import="moamoa.cart.CartDTO" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>장바구니</title>
   <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
   <%
      //세션 ID값 가져오기
/*       String cartId = session.getId();
      DecimalFormat dFormat = new DecimalFormat("###,###");      //숫자를 천단위 구분 */
   %>
</head>
<body>
   <%-- <jsp:include page="menu.jsp"/> --%>
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">장바구니</h1>
      </div>
   </div>
   <div class="container">
      <div class="row">
         <table width=100%>
            <tr>
               <%-- <td align="left"><a href="./deleteCart.jsp?cartId=<%= cartId %>" class="btn btn-danger">삭제하기</a></td> --%>
            </tr>
         </table>
      </div>
      <div style="padding-top: 50px;">
         <!-- table-hover : 마우스 포인터가 있는 행의 배경을 바꾸어 눈에 띄도록 만들어진 클래스 -->
         <table class="table table-hover">
            <tr>
               <th>상품</th>
               <th>가격</th>
               <th>수량</th>
               <th>소계</th>
               <th>비고</th>
            </tr>
            <%
				String product = request.getParameter("productTitle");
				System.out.println(product);
           		ProductDAO Pdao = new ProductDAO();
           		CartDAO Cdao = new CartDAO();
           		
				ProductDTO presult = Pdao.getProductByTitle(product);
				Cdao.addCart(presult);
				
				ArrayList<CartDTO> result = Cdao.getCartByid("test");
               //int sum = 0;
               //세션 속성의 이름이 cardList인 세션 정보(장바구니에 담긴 물품 목록)를 가져와서 ArrayList에 대입
              // ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cardList");
               /* cart.jsp 파일에서 전체상품을 삭제하는 deleteCard.jsp에서 session.invalidate()를 호툴하게 되면
                  cartList는 null이 되기 때문에 아래와 같은 코드가 반드시 필요함. */
               /* if(cartList == null) {
                  cartList = new ArrayList<>();
               } */
               //상품 리스트 하나씩 출력하기
              /*  for(int i = 0; i < cartList.size(); i++) {
                  Product product = cartList.get(i);
                  int total = product.getUnitprice() * product.getQuantity();
                  sum += total; */
                  int sum=0;
                  for(int i = 0; i<result.size(); i++){
  					/* ProductDTO product = listOfProduct.get(i); */
  					System.out.println(i);
            %>
            <tr>
               <td><%= result.get(i).getMealkit_title() %></td>
               	<td><%=result.get(i).getMealkit_count() %></td>
				<td><%=result.get(i).getMealkit_price() %></td>
               <%-- <td><%= dFormat.format(product.getUnitprice()) %></td>
               <td><%= product.getQuantity() %></td>
               <td><%= dFormat.format(total) %></td>
               <td><a href="./removeCard.jsp?id=<%= product.getProductId() %>" class="badge badge-danger">삭제</a></td> --%>
            </tr>
            <%
            sum += result.get(i).getMealkit_count()*result.get(i).getMealkit_price();}
            %>
            <tr>
               <th></th>
               <th></th>
               <th>총액: <%= sum %></th>
               <%-- <th><%= dFormat.format(sum) %></th> --%>
               <th></th>
            </tr>
         </table>
         <script type="text/javascript">
<%-- 			function del(){
				alert("담은 내역을 삭제합니다.");
				<%
           		Cdao.DeleteCartByid("test");
				%>
				location.href="./products.jsp"
			} --%>
		</script>
         <input type="button" onclick="del()"  value="담은내용삭제">
         <a href="./products.jsp" class="btn btn-secondary">쇼핑 계속하기 &raquo;</a>
         <input type="button" onclick="location.href='./paying.jsp'"  value="결제하기">
      </div>
      <hr/>
   </div>
   <%-- <jsp:include page="footer.jsp"/> --%>
</body>
</html>