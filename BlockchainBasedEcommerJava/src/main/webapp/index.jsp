<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.buyer.connection.DbCon"%>
<%@ page import="com.buyer.model.*"%>
<%
Buyer auth = (Buyer) request.getSession().getAttribute("auth");

if (auth != null) {
	request.setAttribute("auth", auth);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Study of Blockchain</title>
<jsp:include page="./includes/header.jsp" />
</head>
<body class="goto-here">
	<jsp:include page="./includes/navbar.jsp" />
	<section id="home-section" class="hero">
		<div class="home-slider owl-carousel">
			<div class="slider-item"
				style="background-image: url(./images/bg_1.jpg)">
				<div class="overlay"></div>
				<div class="container">
					<div
						class="row slider-text justify-content-center align-items-center"
						data-scrollax-parent="true">

						<div class="col-md-12 ftco-animate text-center">
							<h1 class="mb-2">A Study of Blockchain Technology in
								Farmer's Portal</h1>
							<h2 class="subheading mb-4">Blockchain is a method in which
								a confirmation of a transaction is kept by means of a
								crypto-currency. The record is maintained transversely, linking
								several computers in a peer to peer network. Contracts,
								transactions, and the records of them define the economic system
								of a country. They set boundaries and provide security to the
								assets. Considering the features of blockchain such as
								immutability and maintaining the footage of transaction details,
								this paper highlights the usage of blockchain technology with
								farmer’s portal that keep the footage of selling and buying
								information of crops</h2>
							<p>
								<a href="#" class="btn btn-primary">View Details</a>
							</p>
						</div>

					</div>
				</div>
			</div>

			<div class="slider-item"
				style="background-image: url(./images/bg_2.jpg);">
				<div class="overlay"></div>
				<div class="container">
					<div
						class="row slider-text justify-content-center align-items-center"
						data-scrollax-parent="true">

						<div class="col-sm-12 ftco-animate text-center">
							<h1 class="mb-2">100% Fresh &amp; Organic Foods</h1>
							<h2 class="subheading mb-4">The proposed solution uses Java
								as a programming language in integration with the blockchain
								system that will benefit the farmers or vendors and individuals
								by preserving the contract of trade. An interface for the
								farmers is designed using a Java programming language in
								addition with blockchain technology, which is used to store the
								information related to seller, buyer, selling and buying an item
								and total value transacted</h2>
							<!--<p><a href="#" class="btn btn-primary">View Details</a></p> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr>
	<jsp:include page="./includes/footer.jsp" />
</body>
</html>