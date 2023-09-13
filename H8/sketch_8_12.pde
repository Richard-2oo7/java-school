size(500,500);
background(255,255,255);

for(int i = 0; i<8; i++){
  for(int j = 0; j<8; j++){
    if((i+j) % 2 == 0){
      fill(0,0,0);
    }
     else {fill(255,255,255);}
     rect(50 + i * 50, 50  +j * 50 ,50,50);
    }

  }
