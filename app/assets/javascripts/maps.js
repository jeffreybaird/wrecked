var wrecks;


var map;

window.onload = function(){
  wrecks = $('.shipwreck_data').data('shipwreckData');
  for (var i = 0; i < wrecks.length; i++) {
    createMarker(parseFloat(wrecks[i].latitude), parseFloat(wrecks[i].longitude), wrecks[i].shipname, wrecks[i].id);
  }
};

function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 30.817, lng: -23.788},
    zoom: 2
  });
}

function createMarker(lat, long, shipname, id){
  tempmarker = new google.maps.Marker({
    position: {lat: parseFloat(lat), lng: parseFloat(long)},
    map: map,
    title: shipname
  });

  tempmarker.addListener('click', function() {
    console.log(shipname);
    $.ajax({url: 'maps/refresh/' + id});
  });
}
