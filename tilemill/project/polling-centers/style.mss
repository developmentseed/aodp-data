Map {
  background-color: transparent;
}

#polling {
  marker-width:6;
  marker-fill:black;
  marker-line-color:white;
  marker-allow-overlap:true;
  marker-line-width:0.5;
  [zoom <= 7]{marker-line-width:0.25;marker-width:4;}
}
