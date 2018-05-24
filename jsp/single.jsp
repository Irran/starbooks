<%@page import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Single</title>
<link href="/starbooks/resource/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<!-- 需要用到bootstrap 由于bootstrap的css效果要依赖于jquery 所以 也引入了jquery的几个文件  -->
<!--另外 出现了好几处clearfix 类 查了后 是事关布局效果的，css 调整视觉效果的类 不深究-->
<!--theme-style-->
<link href="/starbooks/resource/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link href="/starbooks/resource/css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href="/starbooks/resource/css/style4.css" rel="stylesheet" type="text/css" media="all" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<script src="/starbooks/resource/js/jquery.min.js"></script>
<script src="/starbooks/resource/js/jstarbox.js"></script>
	<link rel="stylesheet" href="/starbooks/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->

</head>
<body>

<!--header-->
<div class="header">
<div class="container">
		<div class="head">
			<div class=" logo">
				<a href="/starbooks/jsp/index.jsp"><img src="/starbooks/resource/images/logo.png" alt=""></a>	
			</div>
		</div>
	</div>
	<div class="header-top">
		<div class="container">
		<div class="col-sm-5 col-md-offset-2  header-login">
					<ul >
                            <%
                            User user = (User) session.getAttribute("user");
                            if(user != null){
                                out.println("<li><a href=#>");
                                out.println("Hello, " + user.getUser_name());
                                out.println("</a></li>");
                                out.println("<li><a href='/starbooks/logout'>Logout</a></li>");
                            }else{
                                out.println("<li><a href='/starbooks/jsp/login.jsp'>Login</a></li>");
                                out.println("<li><a href='/starbooks/jsp/register.jsp'>Register</a></li>");
                            }

                        %>
					</ul>
				</div>
				
			<div class="col-sm-5 header-social">		
					<ul >
						<li><a href="resource/#"><i></i></a></li>
						<li><a href="resource/#"><i class="ic1"></i></a></li>
						<li><a href="resource/#"><i class="ic2"></i></a></li>
						<li><a href="resource/#"><i class="ic3"></i></a></li>
						<li><a href="resource/#"><i class="ic4"></i></a></li>
					</ul>
					
			</div>
				<div class="clearfix"> </div>
		</div>
		</div>





		
		<div class="container">
		
			<div class="head-top">
			
		 <div class="col-sm-8 col-md-offset-2 h_menu4">

<nav class="navbar nav_bottom" role="navigation">
 
 <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header nav_2">
      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
   </div> 
   <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
        <ul class="nav navbar-nav nav_1">
            <li><a class="color" href="resource/index.html">Home</a></li>
			<li><a class="color3" href="resource/product.html">Sale</a></li>
			<li><a class="color4" href="resource/404.html">About</a></li>
            <li><a class="color5" href="resource/typo.html">Short Codes</a></li>
            <li ><a class="color6" href="resource/contact.html">Contact</a></li>
        </ul>
     </div>

</nav>
			</div>
			<div class="col-sm-2 search-right">
					<div class="cart box_1">
						<a href="resource/checkout.html">
						<h3> <div class="total">
							<span class="simpleCart_total"></span></div>
							<img src="/starbooks/resource/images/cart.png" alt=""/></h3>
						</a>
                        <!--目前还不知道 清空购物车 是什么操作-->
						<p><a href="/starbooks/resource/javascript:;" class="simpleCart_empty">Empty Cart</a></p>

					</div>
					<div class="clearfix"> </div>						
					
		</div>
		</div>
		</div>				
</div>









<div class="banner-top">
	<div class="container">
		<h1>Single</h1>
		<em></em>
		<h2><a href="resource/index.html">Home</a><label>/</label>Single</a></h2>
	</div>
</div>










<div class="single">
<div class="container">

<!--picture under the main picture-->

<div class="col-md-9">
	<div class="col-md-5 grid">		
		<div class="flexslider">
			  <ul class="slides">
			    <li data-thumb="/starbooks/resource/images/si.jpg">
			        <div class="thumb-image"> <img src="/starbooks/resource/images/si.jpg" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			    <!-- <li data-thumb="resource/images/si1.jpg">
			         <div class="thumb-image"> <img src="resource/images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			    <li data-thumb="resource/images/si2.jpg">
			       <div class="thumb-image"> <img src="resource/images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
				</li>  -->
				
			  </ul>
		</div>
	</div>	

<div class="col-md-7 single-top-in">
						<div class="span_2_of_a1 simpleCart_shelfItem">

				<h3>这里需要改写为商品名字</h3>
				<p class="in-para"> 这里是副标题 emmmm</p>
			    <div class="price_single">
				  <span class="reducedfrom item_price">$140.00 价格</span>
				 
				 <a href="resource/#">click for offer</a>
				 <div class="clearfix"></div>
				</div>

				<h4 class="quick">Quick Overview:</h4>
				<p class="quick_desc"> 这里填简介 </p>

			  
				 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>1</span></div>
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
			
	<!--this two script method change the total price with no fresh F5-->
	<script>
    $('.value-plus').on('click', function(){
    	var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
    	divUpd.text(newVal);
    });

    $('.value-minus').on('click', function(){
    	var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
    	if(newVal>=1) divUpd.text(newVal);
    });
	</script>
	<!--购物车地址，shoppingCart-->				 
	<a href="resource/#" class="add-to item_add hvr-skew-backward">Add to cart</a>

			<div class="clearfix"> </div>
			</div>
		
	</div>
			<div class="clearfix"> </div>
			<div class="tab-head">
			 <nav class="nav-sidebar">
		<ul class="nav tabs">
          <li class="active"><a href="resource/#tab1" data-toggle="tab">Product Description</a></li>
          <li class=""><a href="resource/#tab2" data-toggle="tab">Additional Information</a></li> 
          <li class=""><a href="resource/#tab3" data-toggle="tab">Reviews</a></li>  
		</ul>
	</nav>
	<div class="tab-content one">
<div class="tab-pane active text-style" id="tab1">
 <div class="facts">
									  <p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
										<ul>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Research</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Design and Development</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Porting and Optimization</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>System integration</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Verification, Validation and Testing</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Maintenance and Support</li>
										</ul>         
							        </div>

</div>
<div class="tab-pane text-style" id="tab2">
	
									<div class="facts">									
										<p > Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections </p>
										<ul >
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Multimedia Systems</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Digital media adapters</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Set top boxes for HDTV and IPTV Player  </li>
										</ul>
							        </div>	

</div>
<div class="tab-pane text-style" id="tab3">

									 <div class="facts">
									  <p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
										<ul>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Research</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Design and Development</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Porting and Optimization</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>System integration</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Verification, Validation and Testing</li>
											<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Maintenance and Support</li>
										</ul>     
							     </div>	

         </div>
  
  </div>
 
 </div>
</div>
</div>
















	<div class="footer">		
			<div class="footer-bottom">
				<div class="container">
					<ul class="footer-bottom-top">
						<li><a href="resource/#"><img src="/starbooks/resource/images/f1.png" class="img-responsive" alt=""></a></li>
						<li><a href="resource/#"><img src="/starbooks/resource/images/f2.png" class="img-responsive" alt=""></a></li>
						<li><a href="resource/#"><img src="/starbooks/resource/images/f3.png" class="img-responsive" alt=""></a></li>
					</ul>
					<p class="footer-class">Copyright &copy; 2018.Company name All rights reserved &nbsp;<a href="index.html" target="_blank" title="StarBook">StarBook</a> &emsp;Published by Group </p>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!--//footer-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins)-->

<script src="/starbooks/resource/js/imagezoom.js"></script>
<script defer src="/starbooks/resource/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="/starbooks/resource/css/flexslider.css" type="text/css" media="screen" />
<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>
<script src="/starbooks/resource/js/simpleCart.min.js"> </script>
<script src="/starbooks/resource/js/bootstrap.min.js"></script>
<!--这一段保留 不用管-->


</body>
</html>