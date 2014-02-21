@grey1: rgb(178,178,178);
@grey2: rgb(93,93,93);
@grey3: rgb(70,70,70);
@grey4: rgb(45,45,45);

#polling-irreg {
  marker-width: 20px;
  marker-opacity: 0;
  text-name:'[alleg_rate_text]';
  text-face-name: 'Futura Condensed Medium';
  text-allow-overlap: true;
  text-fill:#fff;
  [zoom <=6]{
  [alleg_rate > 0][alleg_rate < 2]{text-size: 10px;}  
  [alleg_rate >= 2]{text-size: 15px;}
  [alleg_rate >= 4]{text-size: 17px;}
  [alleg_rate >= 6]{text-size: 25px;}
  [alleg_rate >= 10]{text-size: 32px;}  
  }
  [zoom > 6]{
  [alleg_rate = 0]{text-size: 13px;}  
  [alleg_rate > 0][alleg_rate <= 1]{text-size: 17px;}
  [alleg_rate > 1]{text-size: 22px;}
  [alleg_rate > 4]{text-size: 35px;}
  }
}

/*
76/248*10 = 3.1 out of 10 allegations
518 total centers
76/518 * 10 = 1.5 per 10 centers 

20/160 * 10 = 1.25 per 10 centers 
37/160 * 10 = 2.3 allegations per 10 centers 
*/
#province {
  line-color:#949494;
  line-width:0.3;
  line-opacity: 0.4;
  polygon-opacity:0;
}

#af [SOVEREIGNT = 'Afghanistan']{
  line-color:#949494;
  line-width:0.6;
  polygon-opacity:0;
}

#alleg_poly {
  polygon-opacity: 0.9;
  [alleg_rate > 0][alleg_rate < 2]{polygon-fill:@grey1;}  
  [alleg_rate >= 2]{polygon-fill:@grey1;}
  [alleg_rate >= 4]{polygon-fill:@grey2;}
  [alleg_rate >= 6]{polygon-fill:@grey3;}
  [alleg_rate >= 10]{polygon-fill:@grey4;}
}



