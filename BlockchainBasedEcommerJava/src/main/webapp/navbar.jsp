<%@ page import="com.buyer.model.Buyer" %>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">Farmers Portal</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<%
				if (Buyer auth != null) {
				%>
				<li class="nav-item active"><a class="nav-link"
					href="BuyerLoginCheck.jsp">HOME<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link"
					href="BuyerSearchProductForm.jsp">SEARCH</a></li>
				<li class="nav-item"><a class="nav-link"
					href="BuyerViewPurchasedDetails.jsp">PURCHASED</a></li>
				<li class="nav-item"><a class="nav-link"
					href="BuyerViewTransactionDetails.jsp">TRANSACTIONS</a></li>
				<li class="nav-item"><a class="nav-link" href="buyer-logout">LOGOUT</a></li>
				<li class="nav-item cta cta-colored"><a class="nav-link"
					href="BuyerCheckCartData.jsp"><span class="icon-shopping_cart"></span></a></li>
				<%
				} else {
				%>
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">HOME<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="sellerlogin.jsp">SELLER</a></li>
				<li class="nav-item"><a class="nav-link" href="buyerlogin.jsp">BUYER</a></li>
				<li class="nav-item"><a class="nav-link" href="adminlogin.jsp">ADMIN</a></li>
				<li class="nav-item"><a class="nav-link"
					href="sellerregister.jsp">SELLERREGISTER</a></li>
				<li class="nav-item"><a class="nav-link"
					href="buyerregister.jsp">BUYERREGISTER</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</div>
</nav>