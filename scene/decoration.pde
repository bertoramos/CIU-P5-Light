
PShape twins,
       ceiling_lamp,
       door,
       curtain,
       babadook,
       tv,
       couch,
       chair,
       lamp_table,
       book_babadook,
       bath,
       mirror,
       wc,
       lamp_bath;

void createDecoration()
{
  twins = loadShape("data\\obj\\twins\\twins_simp.obj");
  
  ceiling_lamp = loadShape("data\\obj\\ceiling_lamp\\ceiling_lamp_yellow.obj");
  ceiling_lamp.scale(0.06);
  
  door = loadShape("data\\obj\\door\\door.obj");
  door.scale(0.09);
  
  curtain = loadShape("data\\obj\\curtain\\curtain.obj");
  curtain.scale(6);
  
  babadook = loadShape("data\\obj\\babadook\\babadook.obj");
  
  tv = loadShape("data\\obj\\tv\\tv.obj");
  tv.scale(0.1);
  
  couch = loadShape("data\\obj\\couch\\couch_2.obj");
  couch.scale(0.1);
  
  chair = loadShape("data\\obj\\chair\\chair.obj");
  
  lamp_table = loadShape("data\\obj\\lamp_table\\table_2.obj");
  lamp_table.scale(2);
  
  book_babadook = loadShape("data\\obj\\book-babadook\\book-babadook-mirror.obj");
  
  bath = loadShape("data\\obj\\bath\\bath.obj");
  bath.scale(0.3);
  
  mirror = loadShape("data\\obj\\mirror\\mirror.obj");
  mirror.scale(8);
  
  wc = loadShape("data\\obj\\wc\\wc.obj");
  wc.scale(7);
  
  lamp_bath = loadShape("data\\obj\\lamp_bath\\lamp_bath.obj");
  lamp_bath.scale(10);
}


void drawTV() {
  // tv
  pushMatrix();
  translate(70, -5, -10);
  rotateZ(PI);
  rotateY(PI);
  shape(tv);
  popMatrix();
}

void drawCouch() {
  pushMatrix();
  translate(70, -0, -30);
  rotateX(PI);
  rotateY(PI);
  shape(couch);
  popMatrix();
}

void drawGemelas() {
  // GEMELAS
  pushMatrix();
  translate(15, 0, -68);
  rotateY(2*PI/8);
  rotateX(PI);
  shape(twins);
  popMatrix();
}

void drawLamparas() {
  
  // Lampara
  pushMatrix();
  translate(20, -13, -70);
  rotateX(PI);
  shape(ceiling_lamp);
  popMatrix();
  
  // Lampara
  pushMatrix();
  translate(50, -13, -70);
  rotateX(PI);
  shape(ceiling_lamp);
  popMatrix();
  
  // Lampara
  pushMatrix();
  translate(80, -13, -70);
  rotateX(PI);
  shape(ceiling_lamp);
  popMatrix();
  
  // Lampara
  pushMatrix();
  translate(110, -13, -70);
  rotateX(PI);
  shape(ceiling_lamp);
  popMatrix();
  
  // Lampara
  pushMatrix();
  translate(120, -13, -50);
  rotateX(PI);
  shape(ceiling_lamp);
  popMatrix();
  
  // Lampara
  pushMatrix();
  translate(120, -13, -30);
  rotateX(PI);
  shape(ceiling_lamp);
  popMatrix();
}

void drawDoor() {
  
  
  // Door
  pushMatrix();
  translate(40, 0, -60);
  rotateX(PI/2);
  shape(door);
  popMatrix();
  
  // Door
  pushMatrix();
  translate(80, 0, -60);
  rotateX(PI/2);
  shape(door);
  popMatrix();
  
  // Door
  pushMatrix();
  translate(40, 0, -80);
  rotateX(PI/2);
  rotateZ(PI);
  shape(door);
  popMatrix();
  
  // Door
  pushMatrix();
  translate(80, 0, -80);
  rotateX(PI/2);
  rotateZ(PI);
  shape(door);
  popMatrix();
  
}

void drawCurtain() {
  
  // Curtain
  pushMatrix();
  translate(-5, -8, -68);
  rotateZ(PI);
  //rotateX(PI/2);
  //rotateZ(PI);
  shape(curtain);
  popMatrix();
  
}

void drawBabadook() {
    // babadook
  pushMatrix();
  translate(10, 0, -10);
  rotateZ(PI);
  rotateY(-3*PI/4);
  shape(babadook);
  popMatrix();
}

void drawChair() {
  pushMatrix();
  translate(25, 0, -30);
  rotateZ(PI);
  rotateY(-PI/4);
  shape(chair);
  popMatrix();
}

void drawLampTable() {
  pushMatrix();
  translate(90, 1, -30);
  rotateZ(PI);
  shape(lamp_table);
  popMatrix();
}

void drawBookBabadook() {
  pushMatrix();
  translate(50, -0.35, -30);
  rotateZ(PI);
  rotateY(PI + (2*PI/16));
  shape(book_babadook);
  popMatrix();
}

void drawBath() {
  pushMatrix();
  translate(90, 0, -100);
  rotateZ(PI);
  rotateY(PI);
  
  bath.specular(0);
  
  shape(bath);
  popMatrix();
}

void drawMirror() {
  pushMatrix();
  translate(110, 2, -101.5);
  rotateZ(PI);
  rotateY(PI);
  mirror.specular(255);
  shininess(5.0);
  shape(mirror);
  popMatrix();
}

void drawWC() {
  pushMatrix();
  translate(100, 1, -93);
  rotateZ(PI);
  //rotateY(PI);
  shape(wc);
  popMatrix();
}

void drawLampBath() {
  pushMatrix();
  
  translate(110, -18, -110);
  rotateZ(PI/2);
  rotateX(PI);
  rotateY(PI);
  
  shape(lamp_bath);
  popMatrix();
  
  pushMatrix();
  
  translate(115, -18, -110);
  rotateZ(PI/2);
  rotateX(PI);
  rotateY(PI);
  
  shape(lamp_bath);
  popMatrix();
}
