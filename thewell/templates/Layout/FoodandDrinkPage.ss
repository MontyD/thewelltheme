<div class="contentSpacer">
	<div class="container">
		<div class="fullwidth page">
			<div class="innerPadding">
				<h1>$Title</h1>
				<p class="importantText">$tagLine</p>
			</div>
			<div class="innerContainer" id="drinksList">
				<img class="headerImg" src="$ThemeDir/images/coffee.png" alt="Coffee">
				<h2> The Drinks </h2>
				<div class="priceList">
					<div class="half centerText">
						<% loop $Drinks.Limit($halfDrinks) %>
						<p class="item">$Name <span class="price">£$Price</span></p>
						<% end_loop %>
					</div>
					<div class="half centerText floatRight">
						<% loop $Drinks.Limit(100, $halfDrinks) %>
						<p class="item">$Name <span class="price">£$Price</span></p>
						<% end_loop %>
					</div>
				</div>
			</div>
			<div class="innerContainer" id="foodList">
				<img class="headerImg" src="$ThemeDir/images/stock2.jpg" alt="Coffee">
				<h2> The Food </h2>
				<div class="priceList">
					<div class="half centerText">
						<% loop $Foods.Limit($halfFood) %>
						<p class="item">$Name <span class="price">£$Price</span></p>
						<% end_loop %>
					</div>
					<div class="half centerText floatRight">
						<% loop $Foods.Limit(100, $halfFood) %>
						<p class="item">$Name <span class="price">£$Price</span></p>
						<% end_loop %>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="accentFullWidth">
	<div class="container">
		<div class="fullwidth page">
			<div class="innerPadding">
				<h2>Our suppliers</h2>
				<p class="importantText">$suppliersInfo</p>
				<% loop $Suppliers %>
				<div class="innerContainer supplier">
					<div class="innerPadding">
						<img src="$Photo.SetWidth(400).URL" alt="$Name" class="floatLeft boxed">
						<span class="vMiddle">
						<h3><a href="$Link" title="$Name" target="_blank">$Name</a></h3>
						<p>$Description</p>
					</span>
					</div>
				</div>
				<% end_loop %>
			</div>
		</div>
	</div>
</div>
