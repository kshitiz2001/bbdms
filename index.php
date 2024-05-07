
<?php
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Blood Bank Donar Management System | Home Page</title>
	
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">

</head>

<body>
	<?php include('includes/header.php');?>
	<div class="slider">
		<div class="callbacks_container">
			<ul class="rslides callbacks callbacks1" id="slider4">
				<li>
					<div class="banner-top1">
						<div class="banner-info_agile_w3ls">
							<div class="container">
								<h3><span>Blood Bank Services That You Can Trust</span></h3>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="banner-top2">
						<div class="banner-info_agile_w3ls">
							<div class="container">
								<h3><span>One Donation Save Three Lives EveryDay</span></h3>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="banner-top3">
						<div class="banner-info_agile_w3ls">
							<div class="container">
								<h3><span>Saving Lives, One Pint at a Time</span></h3>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="banner-bottom py-5">
		<div class="d-flex container py-xl-3 py-lg-3">
			<div class="banner-left-bottom-w3ls offset-lg-2 offset-md-1">
				<h3 class="text-white my-3">High professional doctors</h3>
				<p>all specialists have extensive practical experience and regularly training courses in educational centers of the
					world</p>
			</div>
			<div class="button">
				<a href="about.php" class="w3ls-button-agile">Read More
					<i class="fas fa-hand-point-right"></i>
				</a>
			</div>
		</div>
	</div>
	<div class="blog-w3ls py-5" id="blog">
		<div class="container py-xl-5 py-lg-3">
			<div class="w3ls-titles text-center mb-5">
				<h3 class="title text-white">Some of the Donar</h3>
				<span>
					<i class="fas fa-user-md text-white"></i>
				</span>
			</div>
			<div class="row package-grids mt-5">
				<?php 
$status=1;
$sql = "SELECT * from tblblooddonars where status=:status order by rand() limit 6";
$query = $dbh -> prepare($sql);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{ ?>
				<div class="col-md-4 pricing" style="margin-top:2%;">
					
					<div class="price-top">
					
							<img src="images/blood-donor.jpg" alt="" class="img-fluid" />
					
						<h3><?php echo htmlentities($result->FullName);?>
						</h3>
					</div>
					<div class="price-bottom p-4">
						<h4 class="text-dark mb-3">Gender: <?php echo htmlentities($result->Gender);?></h4>
						<p class="card-text"><b>Blood Group :</b> <?php echo htmlentities($result->BloodGroup);?></p>
						
						<a class="btn btn-primary" style="color:#fff" href="contact-blood.php?cid=<?php echo $result->id;?>">Request</a>
					</div>
				</div><?php }} ?>
			
			
			</div>
		</div>
	</div>
	<div class="screen-w3ls py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="w3ls-titles text-center mb-5">
				<h3 class="title">BLOOD GROUPS</h3>
				<span>
					<i class="fas fa-user-md"></i>
				</span>
				<p class="mt-2" style="color:red"><b>Blood group of any human being will mainly fall in any one of the following groups.</b></p>
			</div>
			<div class="row">
            <div class="col-lg-6" style="color:black">
				<p style="color:black">1. A positive or A negative<br>2. B positive or B negative<br>3. O positive or O negative<br>4. AB positive or AB negative<br><br>A healthy diet helps ensure a successful blood donation, and also makes you feel better! Check out the following recommended foods to eat prior to your donation.</p>
			</div>
            <div class="col-lg-6">
                <img class="img-fluid rounded" src="images/12.jpg" alt="">
            </div>
        </div>

        <div class="row mb-4">
            <div class="col-md-8">
            <h4 style="padding-top: 30px;">UNIVERSAL DONORS AND RECIPIENTS</h4>
                <p1>The most common blood type is O, followed by type A.Type O individuals are often called "universal donors" since their blood can be transfused into persons with any blood type. Those with type AB blood are called "universal recipients" because they can receive blood of any type.</p1>
            </div>
        </div>
		</div>
		<div class="container h-100">
			<div class="row align-items-center h-100">
				<div class="col-6 mx-auto">  
					<p class="text-center">
						<a class="btn btn-lg btn-secondary btn-block login-button ml-lg-5 mt-lg-0 mt-4 mb-lg-0 mb-3" href="sign-up.php">Become a Donor</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<?php include('includes/footer.php');?>
	<script src="js/jquery-2.2.3.min.js"></script>
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: true,
				speed: 1000,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
	<script src="js/fixed-nav.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script src="js/medic.js"></script>
	<script src="js/bootstrap.js"></script>
</body>

</html>
