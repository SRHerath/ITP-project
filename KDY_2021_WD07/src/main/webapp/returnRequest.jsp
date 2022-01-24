<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1" import = "java.util.ArrayList, com.jayasadha.return_refund_management.ViewOrder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Return Request</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head>

	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
		<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo1.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="Acc"><i class="fa fa-user"></i> Account</a></li>
								<li><a href="Order"><i class="fa fa-star"></i> Order History</a></li>
								<!--<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>-->
								<li><a href="cart_viewCart" class="active"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								<li><a href="Login.jsp"><i class="fa fa-lock"></i> Login</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="VisitorHome.jsp">Home</a></li>
								<li><a href="cart_viewItems">Shop</a></li>
								<!--
								<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.html">Products</a></li>
										<li><a href="product-details.html">Product Details</a></li> 
										<li><a href="checkout.html">Checkout</a></li> 
										<li><a href="cart.html" class="active">Cart</a></li> 
										<li><a href="login.html">Login</a></li> 
                                    </ul>
                                </li>
								<li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">Blog List</a></li>
										<li><a href="blog-single.html">Blog Single</a></li>
                                    </ul>
                                </li> 
								<li><a href="404.html">404</a></li>
								-->
								<li class="dropdown">Inquiry and Request<i class="fa fa-angle-down"></i>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="myinquiry.jsp">My Inquiry</a></li>
										<li><a href="contact.jsp">Contact Us</a></li> 
										<li><a href="cusViewReturn">My Request</a></li> 
										<li><a href="" class="active"></a></li> 
										<li><a href=""></a></li> 
                                    </ul>
                                </li>
							</ul>
						</div>
					</div>
					-->
					
					<!--search box-->
					
					<form action="#" class="searchform">
						<input type="text" placeholder="Your email address" />
						<button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
					</form>
										
					
				</div>
			</div>
		</div><!--/header-bottom-->
		
	</header><!--/header-->
	

<body>

		<%
			String iName = (String)session.getAttribute("com_ret_name");
			double price = (double)session.getAttribute("com_ret_price");
			String image = (String)session.getAttribute("com_ret_image");
			int Id = (int)session.getAttribute("com_ret_id");
			int rep_sel = (int)session.getAttribute("com_ret_repsel");
			int current_order = (int)session.getAttribute("ret_current_order");
			
			int rep_id=0; //required for processing
		%>

		<div class="container">
			<!--navigation-->
				<div class="breadcrumbs">
					<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li class="active">Shopping Cart</li>
					</ol>
				</div>
			<!--end of navigation-->

			<!--Heading-->
				<div class="heading">
					<h2>Return Request</h2>
					<br><br>
				</div>
			<!--end of heading-->

		</div>
		
	<section id="do_action">
	
		<div class="container">

	
			<div class = "row">
				<div class = "col-sm-6">
					<h3>Item to be replaced</h3>
				</div>
				<div class = "col-sm-6">
					<h3>Replacement Item</h3>
				</div>
			</div>
			
			<br>
							
			<div class="row">
			
			<!--The item to be replaced-->
				
				<div class="col-sm-6">
					<div class="chose_area">
						<!--
						<ul class="user_option">
							<li>
								<input type="checkbox">
								<label>Use Coupon Code</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Use Gift Voucher</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Estimate Shipping & Taxes</label>
							</li>
						</ul>
						<ul class="user_info">
							<li class="single_field">
								<label>Country:</label>
								<select>
									<option>United States</option>
									<option>Bangladesh</option>
									<option>UK</option>
									<option>India</option>
									<option>Pakistan</option>
									<option>Ucrane</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
								
							</li>
							<li class="single_field">
								<label>Region / State:</label>
								<select>
									<option>Select</option>
									<option>Dhaka</option>
									<option>London</option>
									<option>Dillih</option>
									<option>Lahore</option>
									<option>Alaska</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
							
							</li>
							<li class="single_field zip-field">
								<label>Zip Code:</label>
								<input type="text">
							</li>
						</ul>
						<a class="btn btn-default update" href="">Get Quotes</a>
						<a class="btn btn-default check_out" href="">Continue</a>
						-->
												
					<div class="product-details"><!--product-details-->
					<!--product image-->
						<div class="col-sm-7">
							
							<div class="view-product">
								<img src="images/items/<%=image%>.png" alt="" />
								<h3>ZOOM</h3>
							</div>
						</div>
					<!--end of product image-->
					
					<!--/product-information-->
						<div class="col-sm-5">
							<div class="product-information">
								<!--<img src="images/product-details/new.jpg" class="newarrival" alt="" />-->
								<h2><%= iName %></h2>
								<p>ID: <%=Id %></p>
								<img src="images/product-details/rating.png" alt="" />
								<!--<p>Price :</p>-->
								<span>
									<label>Price:</label>
									<span>Rs<%=price%></span>
									<!--
									<input type="text" value="3" />
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-Shopping cart"></i>
										Add to cart
									</button>
									-->
								</span>
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
				</div>
				</div>
				
				<!---start of Replacement Item-->
				
				<% if(rep_sel == 1){ 
				
					String rep_name = (String)session.getAttribute("replace_name");
					double rep_price = (double)session.getAttribute("replace_price");
					String rep_image = (String)session.getAttribute("replace_image");
					rep_id = (int)session.getAttribute("replace_id");
	
				%>	
				<div class="col-sm-6 chose_area">
				
				<!--
					<div class="total_area">
						<ul>
							<li>Cart Sub Total <span>$59</span></li>
							<li>Eco Tax <span>$2</span></li>
							<li>Shipping Cost <span>Free</span></li>
							<li>Total <span>$61</span></li>
						</ul>
							<a class="btn btn-default update" href="">Update</a>
							<a class="btn btn-default check_out" href="">Check Out</a>
					</div>
					-->
					
					<div class="product-details"><!--product-details-->
					
					<!--product image-->
						<div class="col-sm-7">
							<div class="view-product">
								<img src="images/items/<%=rep_image%>.png" alt="" />
								<h3>ZOOM</h3>
							</div>
						</div>
					<!--end of product image-->
					
					<!--/product-information-->
						<div class="col-sm-5">
							<div class="product-information">
								<!--<img src="images/product-details/new.jpg" class="newarrival" alt="" />-->
								<h2><%=rep_name %></h2>
								<p>Web ID: 1089772</p>
								<img src="images/product-details/rating.png" alt="" />
								<!--<p>Price :</p>-->
								<span>
									<label>Price:</label>
									<span>Rs <%=rep_price %></span>
									<!--
									<input type="text" value="3" />
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
									-->
								</span>
							</div><!--/product-information-->
						</div>
						
						
						<div class = "col-sm-7">
						<br><br>
							<a href ="replacement?price=<%=price%>">
								<button type="button" class="btn btn-fefault cart">
									<i class="fa fa-star"></i>
										Select a replacement
								</button>
							</a>
						</div>
					</div><!--/product-details-->	

				</div>
			</div> <!--End of first row-->
			
			<%}else{%>
			
			<div class="col-sm-6 chose_area">
			
					<div class="product-details"><!--product-details-->
					
					<!--product image-->
						<div class="col-sm-7">
							<div class="view-product">
								<img src="images/myAdds/no_products_found.png" alt="" />
								<h3>ZOOM</h3>
							</div>
						</div>
					<!--end of product image-->
					
					<!--/product-information-->
						<div class="col-sm-5">
							<div class="product-information">
								<h2>No Item has been selected</h2>
								<br>
								<p>Please Use the "select replacement button" below to select a replacement</p>
							</div><!--/product-information-->
						</div>
							
						<div class = "col-sm-7">
						<br><br>
							<a href = "replacement?price=<%=price %>">
								<button type="button" class="btn btn-fefault cart">
									<i class="fa fa-star"></i>
										Select a replacement
								</button>
							</a>
						</div>
					</div><!--/product-details-->	

				</div>
			</div> <!--End of first row-->
		
			
			<% }%>
			
			<div class = "col-sm-6">
				<span><h3 for = "evidFile">Upload evidence :</h3></span>
			</div>
			
			<div class = "col-sm-6">
				<span><h3 for = "evidFile">Message : </h3></span>
			</div>
	
			<!--Evidence and submit-->
			
			<form action = "placeReturn" method = "post" enctype="multipart/form-data">		
			
						<input type="hidden" name = "cus_id" value ="<%=session.getAttribute("UID")%>">
						<input type="hidden" name = "order_ID" value ="<%=current_order%>">
						<input type="hidden" name = "ItemID" value ="<%=Id%>">
						<%if(rep_sel == 1){ %>
						<input type="hidden" name = "replacement" value ="<%=rep_id%>">
						<%} %>
						
						<div class = "row chose_area">
							<div class ="col-sm-6">
									<span>
											<div class = "chose_area">
												<input type  = "file" id = "evidFile" name = "evidences">
											</div>
									</span>
									</div>
									
									<div class ="col-sm-6">
											<input type = "textarea" class = "chose_area" name ="cus_note">
									</div>
								</div>
								
								<div class = "col-sm-6">
									<span>
										<input type  = "checkbox" id = "terms">
										<label for = "terms">I agree to the terms and conditions of jayasada textiles</label>
									</span>
								</div>
								
							<div class = "col-sm-6"><input type = "submit" value ="Send Request"></div>
						
		</form> <!--End of the form-->
			
	</section><!--/#do_action-->

	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>e</span>-shopper</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
						</div>
					</div>
					<div class="col-sm-7">
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe1.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe2.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe3.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe4.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="address">
							<img src="images/home/map.png" alt="" />
							<p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Service</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Online Help</a></li>
								<li><a href="">Contact Us</a></li>
								<li><a href="">Order Status</a></li>
								<li><a href="">Change Location</a></li>
								<li><a href="">FAQ’s</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Quock Shop</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">T-Shirt</a></li>
								<li><a href="">Mens</a></li>
								<li><a href="">Womens</a></li>
								<li><a href="">Gift Cards</a></li>
								<li><a href="">Shoes</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Policies</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Terms of Use</a></li>
								<li><a href="">Privecy Policy</a></li>
								<li><a href="">Refund Policy</a></li>
								<li><a href="">Billing System</a></li>
								<li><a href="">Ticket System</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>About Shopper</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Company Information</a></li>
								<li><a href="">Careers</a></li>
								<li><a href="">Store Location</a></li>
								<li><a href="">Affillate Program</a></li>
								<li><a href="">Copyright</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>About Shopper</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="Your email address" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Get the most recent updates from <br />our site and be updated your self...</p>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>
					<p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	


    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>