<!DOCTYPE html>
<html lang="en">

<head>
  $MetaTags(false)
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <% base_tag %>
  <meta property="og:title" content="The Well Hopton Suffolk">
  <meta property="og:type" content="Website">
  <meta property="og:image" content="$ThemeDir/images/TheWell-Logo.png">
  <meta property="og:url" content="https://www.thewellhopton.org.uk/">
  <meta property="og:url" content="Come and have a taste of something wonderful at ‘The Well.’ We will be delighted to offer you your favourite Coffee or Tea and a bite to eat.">
  <meta name="robots" content="index,follow">
  <link rel="apple-touch-icon" sizes="57x57" href="$ThemeDir/favicons/apple-touch-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="$ThemeDir/favicons/apple-touch-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="$ThemeDir/favicons/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="$ThemeDir/favicons/apple-touch-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="$ThemeDir/favicons/apple-touch-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="$ThemeDir/favicons/apple-touch-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="$ThemeDir/favicons/apple-touch-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="$ThemeDir/favicons/apple-touch-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="$ThemeDir/favicons/apple-touch-icon-180x180.png">
  <link rel="icon" type="image/png" href="$ThemeDir/favicons/favicon-32x32.png" sizes="32x32">
  <link rel="icon" type="image/png" href="$ThemeDir/favicons/android-chrome-192x192.png" sizes="192x192">
  <link rel="icon" type="image/png" href="$ThemeDir/favicons/favicon-96x96.png" sizes="96x96">
  <link rel="icon" type="image/png" href="$ThemeDir/favicons/favicon-16x16.png" sizes="16x16">
  <link rel="manifest" href="$ThemeDir/favicons/manifest.json">
  <meta name="msapplication-TileColor" content="#0A1324">
  <meta name="msapplication-TileImage" content="$ThemeDir/favicons/mstile-144x144.png">
  <meta name="theme-color" content="#0A1324">
  <title>$SiteConfig.Title - $Title</title>
  <% if $isHomePage %>
  <script src="https://maps.googleapis.com/maps/api/js"></script>
  <% end_if %>
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-74422232-2', 'auto');
    ga('send', 'pageview');
  </script>
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
  <!--[if IE 8]>
    <div id="ie8overlay">
      <h1>Please upgrade your browser</h1>
      <p>Unfortunately your browser is rather out of date and will not display this website correctly, <a href="http://browsehappy.com" title="Browse Happy">Click here</a> to upgrade your browser.</p>
    </div>
  <![endif]-->

  $Layout

  <div id="fb-root"></div>
  <footer>
    <h3> The Well Coffee Shop, Hopton </h3>
    <p class="small">A not for profit coffeeshop, run by <a href="http://highstreetchapel.org.uk/" title="High Street Chapel">High Street Chapel Hopton</a></p>
    <p class="small">&#169; Copyright <span id="dateNow"></span> The Well Coffee Shop, All Rights Reserved.</p>
    <div class="fb-like" data-href="https://www.facebook.com/thewellhopton/" data-layout="button" data-action="like" data-show-faces="true" data-share="true"></div>
    <p class="vsmall last">Web design by Monty Dawson | <a href="https://icons8.com" title="Icons8" target="_blank">Icon pack by Icons8</a> </p>
  </footer>
  <script type="application/ld+json">
    {
      "name": "The Well Hopton",
      "@type": "Organization",
      "url": "https://www.thewellhopton.org.uk/",
      "logo": "$ThemeDir/images/TheWell-Logo.png",
      "sameAs" : [
        "https://www.facebook.com/thewellhopton/"
      ]
    }
    </script>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.5";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>

</body>

</html>
