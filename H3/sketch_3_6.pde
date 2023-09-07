size(1200,600);
background(255,255,255);

line(10,20,350,20);
fill(0,0,0);
text("Lijn",168,34);

noFill();
rect(10,40,350,150);
text("Rechthoek",158,205);

noFill();
rect(10,230,350,150,20);
text("Afgeronde rechthoek",140,400);

fill(255,0,254);

stroke(255,255,255);
rect(379,39,351,151);

fill(0,0,0);
text("Gevulde rechthoek met ovaal",470,205);
noFill();
stroke(0,0,0);
ellipse(555,115,350,150);

strokeWeight(0);
fill(255,0,254);
ellipse(555,305,350,150);
fill(0,0,0);
text("gevulde ovaal",520,400);

strokeWeight(1);
noFill();
stroke(0,0,0);
ellipse(925,115,350,150);


strokeWeight(1);
noFill();
stroke(0,0,0);
ellipse(925,305,150,150);
text("cirkel",912,400);

stroke(0,0,0);
fill(255,0,254);
arc(925,115,350,150, 0, QUARTER_PI);
fill(0,0,0);
text("taarpunt met ovaal eromheen",850,205);
