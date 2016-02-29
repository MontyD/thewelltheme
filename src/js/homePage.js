(function() {

  'use strict';

  //debounce util function
  function debounce(func, wait, immediate) {
    var timeout;
    return function() {
      var context = this,
        args = arguments;
      var later = function() {
        timeout = null;
        if (!immediate) func.apply(context, args);
      };
      var callNow = immediate && !timeout;
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
      if (callNow) func.apply(context, args);
    };
  }

  //init GoogleMap
  function initializeMap() {
    var e = document.getElementById("map"),
      o = new google.maps.LatLng(52.3739128, 0.928362),
      a = {
        center: o,
        zoom: 14,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        scrollwheel: !1
      },
      t = new google.maps.Map(e, a);
    new google.maps.Marker({
      position: o,
      map: t,
      title: "The Little House, Burgate"
    });
  }

  //define headerElement and map called boolean
  var header = document.getElementById('dynaHeader'),
    mapCalled = false;

  //define scroll events
  var scrollEvents = debounce(function() {
    var doc = document.documentElement;
    var top = (window.pageYOffset || doc.scrollTop) - (doc.clientTop || 0);
    if (top > 5) {
      header.className = 'headerSmall';
    } else {
      header.className = '';
    }
    if (!mapCalled && top > 200) {
      mapCalled = true;
      initializeMap();
    }
  }, 10);

  //on scroll check if nav is at top, if not, make it small
  addEvent("scroll", window, scrollEvents);

})();
