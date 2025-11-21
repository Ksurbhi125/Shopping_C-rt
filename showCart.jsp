<!DOCTYPE html>
<html>
<head>
<style>
table{
width:90%;
border:1px solid red;
border-collapse:collapse;
}
tr{
height:30px;
}
td{
border:1px solid red;
border-collapse:collapse;
padding:5px;
}
</style>
</head>
<body>
<h2> Welcome to BooksStore!!!!</h2>
<h2>Your Cart is here</h2>
<table>
<%@page import="java.util.List"%>
<%
Object obj=session.getAttribute("MyCart");
if(obj!=null){
	List<String> cartList=(List<String>) obj;
	if(cartList.isEmpty()){
		%>
		<font color="red" size="5">No Books in your Cart, Shop now</font>
		<% 
	}
	int count=1;
	for(String bname:cartList){
	%>
	<tr>
	<td><%=count++ %></td>
	<td><%=bname%></td>
	<td> Rs.250</td>
	<td>10%</td>
	<td>
	<form action="removeFromcart.srb">
	<input type="hidden" name="bname" value="<%=bname %>"/>
	<input type="submit" value="Remove From Cart"/>
	</form>
	</td>
	</tr >
<% 
	}
}
%>
</table>
<div>
<h3>
	<a href="showBooks.jsp">Continue Shopping</a>
	<a href="placeOrder.jsp">Place Order</a>
	<a href="index.jsp">Search More</a>
</h3>
</div>
</body>
</html>
