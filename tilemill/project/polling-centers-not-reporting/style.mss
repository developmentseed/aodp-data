@grey1: rgb(178,178,178);
@grey2: rgb(93,93,93);
@grey3: rgb(70,70,70);
@grey4: rgb(45,45,45);

#not-reporting {
  marker-width: 20px;
  marker-opacity: 0;
  text-name:'[pct_not_text]';
  text-face-name: 'Futura Condensed Medium';
  text-allow-overlap: true;
  text-fill:#fff;
  [zoom <=6]{
  [pct_NonReporting_2009 = 0]{text-size: 10px;}  
  [pct_NonReporting_2009 > 0][pct_NonReporting_2009 <= 1]{text-size: 12px;}
  [pct_NonReporting_2009 > 1]{text-size: 17px;}
  [pct_NonReporting_2009 > 4]{text-size: 30px;}  
  }
  [zoom > 6]{
  [pct_NonReporting_2009 = 0]{text-size: 13px;}  
  [pct_NonReporting_2009 > 0][pct_NonReporting_2009 <= 1]{text-size: 17px;}
  [pct_NonReporting_2009 > 1]{text-size: 22px;}
  [pct_NonReporting_2009 > 4]{text-size: 35px;}
  }
}

#province {
  line-color:#fff;
  line-width:0.5;
  line-opacity: 0.4;
  polygon-opacity:0.9;
  [pct_NonReporting_2009 = 0]{polygon-fill:@grey1;}  
  [pct_NonReporting_2009 > 0][pct_NonReporting_2009 <= 1]{polygon-fill:@grey2;}
  [pct_NonReporting_2009 >= 1]{polygon-fill:@grey3;}
  [pct_NonReporting_2009 >= 4]{polygon-fill:@grey4;}
}
