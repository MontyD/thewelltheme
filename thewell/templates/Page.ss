<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <% base_tag %>
  <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
<![endif]-->
  <% if $isHomePage %>
  <script src="https://maps.googleapis.com/maps/api/js"></script>
  <% end_if %>
  <title>$SiteConfig.Title - $Title</title>
</head>

<body>
  <% if $isHomePage %>
  <header id="dynaHeader">
  <% else %>
  <header id="dynaHeader" class='headerSmall'>
  <% end_if %>
    <div class="container">
      <a href="$AbsoluteBaseURL" title="Home" id="mainLogo"></a>
      <h2 class="whiteText"><span id="funSubTitle"></span><span class="blink"><noscript>A Coffee Shop</noscript>|</span></h2>
      <nav>
        <ul id="desktopNav">
          <% loop $Menu(1) %>
            <li><a class="$LinkingMode wide" href="$Link" title="$MenuTitle">$MenuTitle</a></li>
          <% end_loop %>
          <li class="narrow">
            <a id="initialMobile" href="#menu" class="navOnClick">Menu</a>
          </li>
        </ul>
        <a href="#menu" title="Show Menu" id="mobileNavButton" class="navOnClick"></a>
      </nav>
    </div>
  </header>

  <ul id="mobileNav">
    <% loop $Menu(1) %>
    <li><a class="$LinkingMode wide" href="$Link" title="$MenuTitle">$MenuTitle</a></li>
    <% end_loop %>
    <li class="close">
      <a href="#closeNav" title="close" id="closeMobileNav" class="navOnClick"><img src="$ThemeDir/images/close.png" alt="Close" /></a>
    </li>
  </ul>
  <div id="overlay" class="navOnClick"></div>

  $Layout

  <div id="fb-root"></div>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.5";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>

  <footer>
    <h3> The Well Coffee Shop, Hopton </h3>
    <p class="small">A not for profit coffeeshop, run by <a href="http://highstreetchapel.org.uk/" title="High Street Chapel">High Street Chapel Hopton</a></p>
    <p class="small">&#169; Copyright <span id="dateNow"></span> The Well Coffee Shop, All Rights Reserved.</p>
    <div class="fb-like" data-href="https://www.facebook.com/thewellhopton/" data-layout="button" data-action="like" data-show-faces="true" data-share="true"></div>
    <p class="vsmall last">Web design by Monty Dawson | <a href="https://icons8.com" title="Icons8" target="_blank">Icon pack by Icons8</a> </p>
  </footer>
</body>

</html>
