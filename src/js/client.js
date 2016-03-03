//General use functions


//AddEvent for old ie support
function addEvent(evnt, elem, func) {
   if (elem.addEventListener)  {
	  elem.addEventListener(evnt,func,false);
   } else if (elem.attachEvent) {
	  elem.attachEvent("on" + evnt, func);
   } else {
	  elem[evnt] = func;
   }
}


(function() {
  'use strict';

  //*********************
  //** Javascript loaded, remove 'noJS' class from body
  //*********************
  document.body.className = "";

  //*********************
  //** Subtitle Animation
  //*********************
  var subtitleItems = ["A Coffee Shop", "A Place of Refreshing", "A Resting-point", "A Place to Chat"],
    subtitleElement = document.getElementById('funSubTitle'),
    subtitleIndex = 0,
    currentSubtitleIndex = 0,
    currentSubtitle = subtitleItems[subtitleIndex];

  var putSubtitle = function() {
    subtitleElement.innerHTML = currentSubtitle.substr(0, currentSubtitleIndex++);
    if (currentSubtitleIndex < currentSubtitle.length + 1) {
      setTimeout(putSubtitle, 80);
    } else {
      setTimeout(clearSubtitle, 2000);
    }
    return false;
  };

  var clearSubtitle = function() {
    subtitleElement.innerHTML = currentSubtitle.substr(0, currentSubtitleIndex--);
    if (currentSubtitleIndex > 0) {
      setTimeout(clearSubtitle, 60);
    } else {
      subtitleIndex++;
      if (subtitleIndex >= subtitleItems.length) {
        subtitleIndex = 0;
      }
      currentSubtitle = subtitleItems[subtitleIndex];
      putSubtitle();
    }
  };

  addEvent('load', window, putSubtitle);


  //*********************
  //** Handle mobile navigation menu
  //*********************
  var mobileNav = document.getElementById('mobileNav'),
    mobileNavClickElements = document.getElementsByClassName('navOnClick'),
    navOpen = false,
    toggleMobileNav = function(e) {
      var evt = e || window.event;
      if (evt.preventDefault) {
        evt.preventDefault();
      } else {
        evt.returnValue = false;
      }
      if (navOpen) {
        overlay.className = "";
        mobileNav.className = "";
        navOpen = false;
      } else {
        overlay.className = "active";
        mobileNav.className = "active";
        navOpen = true;
      }
    };

  for( var i = 0; i < mobileNavClickElements.length; i++) {
    addEvent('click', mobileNavClickElements[i], toggleMobileNav);
  }

  //*********************
  //** Add date year to footer
  //*********************
  var dateElement = document.getElementById('dateNow');
  if (dateElement) {
    var tempDate = new Date();
    dateElement.innerHTML = tempDate.getFullYear();
  }
})();
