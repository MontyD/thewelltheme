<div class="contentSpacer homepage">
  <div class="container">
    <div class="twothirds page left start">
      <div class="innerPadding">
        <h1>$SiteConfig.Title</h1>
        <p class="importantText">$tagLine</p>
      </div>
    </div>
    <div class="onethird page right start">
      <div class="innerPadding">
        <h2>Opening hours</h2>
        <table id="openingTimes">
          <% loop $OpeningDays %>
          <tr>
            <td>$Day</td>
            <td>$Times</td>
          </tr>
          <% end_loop %>
        </table>
      </div>
    </div>
  </div>
  <div class="accentFullWidth">
    <div class="container">
      <div class="fullwidth page">
        <div class="innerPadding">
          <img src="$MainPhoto.SetWidth(450).URL" alt="The Well" class="boxed floatLeft">
          <span class="nextToImg paddingTop">
            $Content
            <a href="./foodanddrink" title="Our Menu" class="linkLikeAButton">Our Menu</a>
            <a href="./mission" title="About The Well" class="linkLikeAButton">Find out more</a>
          </span>
        </div>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="imageWithCaption">
      <img src="$ShowcasePhoto1.SetWidth(500).URL" alt="The Well">
      <div class="caption">$Showcasephoto1Caption</div>
    </div>
    <div class="imageWithCaption">
      <img src="$ShowcasePhoto2.SetWidth(500).URL" alt="The Well">
      <div class="caption">$Showcasephoto2Caption</div>
    </div>
  </div>
  <div class="container">
    <div class="fullwidth page map">
      <h2>Find us</h2>
      <span class="address">The Well, High Street, Hopton, Norfolk, IP22 2QX</span>
      <div id="map" style="width:100%; height: 300px;"></div>
    </div>
  </div>
</div>
