Map {
  background-color: transparent;
}

#polling {
  marker-width:2;
  marker-fill:black;
  marker-line-color:white;
  marker-allow-overlap:true;
  marker-line-width:0.5;
  marker-opacity:0.3;
  [zoom <= 5]{marker-line-width:0.1;marker-width:1;marker-opacity:0.2;}
  [zoom = 6]{marker-line-width:0.2;marker-width:2;marker-opacity:0.2;}
  [zoom = 7]{marker-line-width:0.25;marker-width:3;marker-opacity:0.2;}
  [zoom = 8]{marker-line-width:0.25;marker-width:4;}
  [zoom = 9]{marker-line-width:0.25;marker-width:4;}
  [zoom = 10]{marker-line-width:0.25;marker-width:6;}
  [zoom = 11]{marker-line-width:0.25;marker-width:6;}
  [zoom = 12]{marker-line-width:0.25;marker-width:7;}
  [zoom = 13]{marker-line-width:0.25;marker-width:9;}
  [zoom = 14]{marker-line-width:0.25;marker-width:10;}
  [zoom = 15]{marker-line-width:0.25;marker-width:12;}
  [zoom = 16]{marker-line-width:0.25;marker-width:12;}
}
