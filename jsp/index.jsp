<%@page import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>Home for StarBook</title>
<!--底层布局的css-->
<link type="text/css" rel="stylesheet" href="/starbooks/resource/css/reset.css" />
<!--样式css-->
<link type="text/css" rel="stylesheet" href="/starbooks/resource/css/index.css" />


<!--改动-->

<link href="/starbooks/resource/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- 需要用到bootstrap 由于bootstrap的css效果要依赖于jquery 所以 最后也引入了jquery的几个文件  -->
<link href="/starbooks/resource/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="/starbooks/resource/css/style4.css" rel="stylesheet" type="text/css" media="all" />  
<link href="/starbooks/resource/css/form.css" rel="stylesheet" type="text/css" media="all" />
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
</head>
<body>

<!--头部-->
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
                
             <!-- social media of administrator to contact  --> 
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
            <li><a class="color" href="#">Home</a></li>
            <li><a class="color3" href="#">User</a></li>
            <li><a class="color4" href="#">Cart</a></li>
            <!-- <li><a class="color5" href="resource/typo.html">Short Codes</a></li>
            <li ><a class="color6" href="resource/contact.html">Contact</a></li> -->
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
                        <p><a href="/starbooks/resource/javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                    </div>
                    <div class="clearfix"> </div>

                        
           
        </div>
        </div>
        </div>     
    </div>

<!--以上为导航栏-->




<div class="banner-top">
    <div class="container">
        <h1>Starbooks</h1>
        <em></em>
        <h2><a href="/starbooks/jsp/index.jsp">Home</a></h2>
    </div>
</div>


<div class="container">
<div class="w_100_l">
	<div class="main">
      <div class="content">
            <h1 class="h1_book_title">Here are books for users to buy</h1>
        	<ul>
            	<li>
                	<dl>
                    	<dd><a href="resource/single.html"><img src="/starbooks/resource/book/book_01.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="resource/single.html" target="_blank">Gift cards</a></p>
                            <p class="book_inline">$25, $50, and $100</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_02.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">Just Enough Research</a></p>
                            <p class="book_inline">by Erika Hall</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_03.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">Content Strategy for Mobile</a></p>
                            <p class="book_inline">by Karen McGrane</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_04.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">Design Is a Job</a></p>
                            <p class="book_inline">by Mike Monteiro</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_05.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">Mobile First</a></p>
                            <p class="book_inline">by Luke Wroblewski</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_06.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">Designing for Emotion</a></p>
                            <p class="book_inline">by Aarron Walter</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_07.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">Responsive Web Design</a></p>
                            <p class="book_inline">by Ethan Marcotte</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_08.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">CSS3 for Web Designers</a></p>
                            <p class="book_inline">by Dan Cederholm</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_09.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">HTML5 for Web Designers</a></p>
                            <p class="book_inline">by Jeremy Keith</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_10.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">On Web Typography</a></p>
                            <p class="book_inline">by Jason Santa Maria</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_11.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">Responsible Responsive Design</a></p>
                            <p class="book_inline">by Scott Jehl</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
            	<li>
                	<dl>
                    	<dd><a href="#"><img src="/starbooks/resource/book/book_12.jpg" alt="book" /></a></dd>
                        <dt>
                        	<p class="book_title"><a href="#" target="_blank">On Web Typography</a></p>
                            <p class="book_inline">by Jason Santa Maria</p>
                            <a class="book_buy" href="#" target="_blank">ADD TO CART</a>
                        </dt>
                    </dl>
                </li>
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
                        <li><a href="#"><img src="/starbooks/resource/images/f1.png" class="img-responsive" alt=""></a></li>
                        <li><a href="#"><img src="/starbooks/resource/images/f2.png" class="img-responsive" alt=""></a></li>
                        <li><a href="#"><img src="/starbooks/resource/images/f3.png" class="img-responsive" alt=""></a></li>
                    </ul>
                        <p class="footer-class"><a href="/starbooks/jsp/login.jsp?admin=true" target="_blank">For Administrator</a>&nbsp;&nbsp;Copyright &copy; 2018. &nbsp;<a href="/stabooks/jsp/index.jsp" target="_blank" title="StarBook">StarBook</a> &emsp;Published by Group 13</p>
                    <div class="clearfix"> </div>
                </div>
            </div>
 </div>
 





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
<script src="/starbooks/tresource/js/bootstrap.min.js"></script>
<!--这一段保留 不用管-->
</body>
</html>