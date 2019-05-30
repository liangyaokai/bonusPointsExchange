<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--这是top-->
<div class="header">
  <div class="span1">
    <div class="logo"><img src="images/logo.png" alt="Bonus exchange platform"/></div>
  </div>
  <div class="span2">
    <div class="mainNav">
      <ul>
        <li><a href="index.jsp">主页</a></li>
        <li><a href="reference.jsp">二手房</a></li>
        <li><a href="/bonusPointsExchange/QueryLatestOrder">新发布</a></li>
        <li><a href="/bonusPointsExchange/actionServlet?actionCode=bindShop&methodCode=find_bindedShops">交换</a></li>
    <%
	String isUserLogin = (String)session.getAttribute("userName"); 
	String isShopLogin = (String)session.getAttribute("shopName"); 
	if(isUserLogin == null && isShopLogin == null) {
	%>
	<li><a href="login.jsp">My account</a> </li>
<% } else if(isUserLogin != null && isShopLogin == null){%>
	 <li  style="font-size:24px;">
	<a href="index.html"><%=session.getAttribute("userName") %></a><a href="/bonusPointsExchange/actionServlet?actionCode=log&methodCode=logout&logType=user"><span style="font-size:24px;">|Logout</span></a></li>	
	 <% } else if(isShopLogin != null && isUserLogin == null){%>
	 <li style="font-size:24px;">
	<a href="/bonusPointsExchange/QueryShopInfoServlet"><%=session.getAttribute("shopName") %></a><a href="/bonusPointsExchange/actionServlet?actionCode=log&methodCode=logout&logType=shop"><span style="font-size:24px;">|Logout</span></a></li>	
<% }%>

     </ul>
    </div>
  </div>
</div>