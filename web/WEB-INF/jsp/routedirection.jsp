<%-- 
    Document   : routedirection
    Created on : Dec 27, 2016, 3:51:55 PM
    Author     : antu
--%>

<script type="text/javascript">
    var map;
    $(document).ready(function(){
      map = new GMaps({
        el: '#map',
        lat: -12.043333,
        lng: -77.028333
      });
      map.renderRoute({
        origin: [-12.044012922866312, -77.02470665341184],
        destination: [-12.090814532191756, -77.02271108990476],
        travelMode: 'driving',
        strokeColor: '#131540',
        strokeOpacity: 0.6,
        strokeWeight: 6
      }, {
        panel: '#directions',
        draggable: true
      });
    });
  </script>
  <h1>GMaps.js &mdash; Routes</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
      <div id="directions"></div>
    </div>
    <div class="span6">
      <p>With GMaps.js you can render a directions panel using the following code:</p>
      <pre>map.renderRoute({
  origin: [-12.044012922866312, -77.02470665341184],
  destination: [-12.090814532191756, -77.02271108990476],
  travelMode: 'driving',
  strokeColor: '#131540',
  strokeOpacity: 0.6,
  strokeWeight: 6
}, {
  panel: '#directions',
  draggable: true
});</pre>
      <p>You must define two points (<strong>origin</strong> and <strong>destination</strong>) and color, opacity and weight of the route in the map.</p>
      <p>Also, you can define a <code>travelMode</code>: <code>driving</code>, <code>bicycling</code> or <code>walking</code>. Default is <code>walking</code></p>
    </div>
  </div>
