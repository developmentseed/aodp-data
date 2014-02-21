#settlements {
  marker-opacity:0.8;
  marker-width:0.75;
  marker-fill:#246ec1;
  marker-line-color:#246ec1;
  marker-line-width:0.1;
  marker-allow-overlap:true;
  [zoom > 5]{marker-width:1;}  
  [zoom > 6]{marker-width:1.5;}  
  [zoom > 7]{marker-width:2;}
  [zoom > 9]{marker-width:3;}
  [zoom > 11]{marker-width:5;}
}

/*#major [population >= 50000]{
  marker-opacity:0.4;
  marker-fill:#535c61;
  marker-line-color:darken(#535c61,20);
  marker-line-width:1;
  marker-allow-overlap:true;
  [zoom <= 6]{
  [population >= 50000]{marker-width:15;}
  [population >= 100000]{marker-width:30;}
  [population >= 500000]{marker-width:50;}
  }
  [zoom > 6] {
  [population >= 50000]{marker-width:30;}
  [population >= 100000]{marker-width:50;}
  [population >= 500000]{marker-width:100;}
  }
}*/

#af [SOVEREIGNT = 'Afghanistan']{
  line-color:#535c61;
  line-width:0.25;
  polygon-opacity:0;
}
