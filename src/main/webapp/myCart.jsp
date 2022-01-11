<%@page import="com.example.demo.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>

<title>My Cart</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Cart <i class='fas fa-cart-arrow-down'></i></div>

<h3 class="alert">There is only one Quantity! So click on remove!</h3>

<h3 class="alert">Quantity  Increased Successfully!</h3>



<h3 class="alert">Quantity  Decreased Successfully!</h3>
<h3 class="alert">Product Successfully Removed!</h3>
<table>
<thead>
<tr>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i></th>
         <th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
      
      </table>
      <br>
      <br>
      <br>

</body>
</html>