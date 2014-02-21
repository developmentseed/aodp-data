@grey1: rgb(178,178,178);
@grey2: rgb(93,93,93);
@grey3: rgb(70,70,70);
@grey4: rgb(45,45,45);

#district {
  text-name:'[pct_female_text]';
  text-face-name: 'Futura Condensed Medium';
  text-allow-overlap: false;
  text-fill:#fff;
  [zoom <=6]{ 
  [pct_female >=0][pct_female < 0.1]{text-size: 28px;}    
  [pct_female >=0.1][pct_female < 0.3]{text-size: 20px;}          
  [pct_female > 0.3][pct_female < 0.4]{
      text-size: 15px;
      text-opacity:0.8;
    }
  [pct_female >= 0.4]{
      text-size: 8px;
      text-opacity:0.6;
    }  
  }
  [zoom > 6]{
  [pct_female >=0][pct_female < 0.1]{text-size: 25px;}    
  [pct_female >=0.1][pct_female < 0.3]{text-size: 22px;}          
  [pct_female > 0.3][pct_female < 0.4]{
      text-size: 20px;
      text-opacity:0.7;
    }
  [pct_female >= 0.4]{
      text-size: 13px;
      text-opacity:0.6;
    }  
  }
}

#province {
  line-color:#808080;
  line-width:0.5;
  line-opacity: 0.4;
  polygon-opacity:0;
}

#district {
  line-color:@grey1;
  line-width:0.25;
  line-opacity: 0.4;
  polygon-opacity:0;
}
