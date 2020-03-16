

Wall w00, w01, w02, w03, w05, w07, w08, w09, w10, w11, w13, w14, w15, w16;

float wall_width = 5;
float wall_height = 20;

Plane floor0, floor1, floor2, floor3, floor4, floor5, floor6, floor7;
Plane ceil0, ceil1, ceil2, ceil3, ceil4, ceil5, ceil6, ceil7;

void createWalls()
{

  
  
  
  w00 = new Wall(new PVector(0, 0, 0),
                 new PVector(105, wall_height, wall_width),
                 new PImage[]{
                                textures_test[0],
                                textures_test[0],
                                salon_papel,
                                textures_test[0],
                                textures_test[0],
                                textures_test[0],
                             },
                 new int[]{1,1,10,1,1,1});
  
  w01 = new Wall(new PVector(0, 0, -5),
                 new PVector(wall_width, wall_height, 55),
                 new PImage[]{
                                textures_test[0],
                                salon_papel,
                                textures_test[0],
                                textures_test[0],
                                textures_test[0],
                                textures_test[0],
                             },
                 new int[]{1,10,1,1,1,1});
  
  w02 = new Wall(new PVector(105, 0, -15),
                 new PVector(wall_width, wall_height, 25),
                 new PImage[]{
                                salon_papel,
                                pasillo_papel,
                                textures_test[0],
                                GRAY_80,
                                textures_test[0],
                                textures_test[0],
                             },
                 new int[]{10,5,1,1,1,1});
  
  w03 = new Wall(new PVector(130, 0, -5),
                 new PVector(wall_width, wall_height, 50),
                 new PImage[]{
                                pasillo_papel,
                                textures_test[0],
                                GRAY_80,
                                textures_test[0],
                                textures_test[0],
                                textures_test[0],
                             },
                 new int[]{5,1,1,1,1,1});

                 
  w05 = new Wall(new PVector(5, 0, -40),
                 new PVector(105, wall_height, 4*wall_width),
                 new PImage[]{
                                textures_test[0],
                                pasillo_papel,
                                pasillo_papel,
                                salon_papel,
                                textures_test[0],
                                textures_test[0],
                             },
                 new int[]{1,6,8,10,1,1});

  
  w07 = new Wall(new PVector(0, 0, -80),
                 new PVector(120, wall_height, wall_width),
                 new PImage[]{
                                textures_test[0],
                                GRAY_80,
                                bath_papel,
                                pasillo_papel,
                                textures_test[0],
                                textures_test[0],
                             },
                  new int[]{1,1,8,8,1,1}
                 );

  w08 = new Wall(new PVector(75, 0, -85),
                 new PVector(wall_width, wall_height, 25),
                 new PImage[]{
                               textures_test[0],
                               bath_papel,
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                             },
                 new int[]{1,8,1,1,1,1});
  
  w09 = new Wall(new PVector(130, 0, -85),
                 new PVector(wall_width, wall_height, 25),
                 new PImage[]{
                               bath_papel,
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                             },
                 new int[]{8,1,1,1,1,1});
  
  w10 = new Wall(new PVector(75, 0, -110),
                 new PVector(60, wall_height, wall_width),
                 new PImage[]{
                               textures_test[0],
                               textures_test[0],
                               GRAY_80,
                               bath_papel,
                               textures_test[0],
                               textures_test[0],
                             },
                 new int[]{1,1,1,5,1,1});
                 
  w11 = new Wall(new PVector(105, 0, 0),
                 new PVector(wall_width, wall_height, wall_width),
                 new PImage[]{
                               textures_test[0],
                               textures_test[0],
                               GRAY_80,
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                             },
                 new int[]{1,1,1,1,1,1});
                 
  
  w13 = new Wall(new PVector(130, 0, -80),
                 new PVector(wall_width, wall_height, wall_width),
                 new PImage[]{
                               GRAY_80,
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                             },
                 new int[]{1,1,1,1,1,1});
  
  w14 = new Wall(new PVector(130, 0, -55),
                 new PVector(wall_width, wall_height, 25),
                 new PImage[]{
                               pasillo_papel,
                               textures_test[0],
                               textures_test[0],
                               GRAY_80,
                               textures_test[0],
                               textures_test[0],
                             },
                 new int[]{4,1,1,1,1,1});
  
  w15 = new Wall(new PVector(0, 0, -60),
                 new PVector(wall_width, wall_height, 20),
                 new PImage[]{
                               textures_test[0],
                               pasillo_papel,
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                             },
                 new int[]{1,8,1,1,1,1});

   w16 = new Wall(new PVector(110, 0, 0),
                 new PVector(20, wall_height, wall_width),
                 new PImage[]{
                               textures_test[0],
                               pasillo_papel,
                               pasillo_papel,
                               textures_test[0],
                               textures_test[0],
                               textures_test[0],
                             },
                 new int[]{1,8,5,1,1,1});
}

PVector tv_color = new PVector(0, 0.1, 0.2);


void createFloors()
{
  floor0 = new Plane(new PVector(5, 0, -5),
                     new PVector(100, 0, 50), BROWN_NOGAL);
  
  floor1 = new Plane(new PVector(105, 0, -5),
                     new PVector(5, 0, 10), GRAY_80);
  
  floor2 = new Plane(new PVector(110, 0, -5),
                     new PVector(20, 0, 55), BROWN_NOGAL);
  
  floor3 = new Plane(new PVector(130, 0, -45),
                     new PVector(5, 0, 10), BROWN_NOGAL);
                     
  floor4 = new Plane(new PVector(135, 0, -5),
                     new PVector(50, 0, 50), BROWN_NOGAL);
  
  floor5 = new Plane(new PVector(5, 0, -60),
                     new PVector(125, 0, 20), BROWN_NOGAL);
  
  floor6 = new Plane(new PVector(120, 0, -80),
                     new PVector(10, 0, 5), GRAY_80);
  
  floor7 = new Plane(new PVector(80, 0, -85),
                     new PVector(50, 0, 50), BROWN_NOGAL);
}


void createCeils()
{
  ceil0 = new Plane(new PVector(5, -wall_height, -5),
                     new PVector(100, 0, 50), GRAY_150);
  
  ceil1 = new Plane(new PVector(105, -wall_height, -5),
                     new PVector(5, 0, 10), GRAY_80);
  
  ceil2 = new Plane(new PVector(110, -wall_height, -5),
                     new PVector(20, 0, 55), GRAY_150);
  
  ceil3 = new Plane(new PVector(130, -wall_height, -45),
                     new PVector(5, 0, 10), GRAY_150);
                     
  ceil4 = new Plane(new PVector(135, -wall_height, -5),
                     new PVector(50, 0, 50), GRAY_150);
  
  ceil5 = new Plane(new PVector(5, -wall_height, -60),
                     new PVector(125, 0, 20), GRAY_150);
  
  ceil6 = new Plane(new PVector(120, -wall_height, -80),
                     new PVector(10, 0, 5), GRAY_80);
  
  ceil7 = new Plane(new PVector(80, -wall_height, -85),
                     new PVector(50, 0, 50), GRAY_150);
}

void build(User user)
{
  //noLights();
  
  //ambientLight(100, 100, 100);
  w11.drawit();
  w11.collide(user);
  
  w13.drawit();
  w13.collide(user);
  
  
  
  
  // *** Baño ***
  ambientLight(50, 50, 50);
  
  lightSpecular(0,0,0);
  spotLight(150,150,150,
            110, -18, -110,
            0,1,0,
            2*PI/4,
            1);
  spotLight(150,150,150,
            115, -18, -110,
            0,1,0,
            2*PI/4,
            1);
  
  
  drawBath();
  
  
  lightSpecular(100,100,100);
  spotLight(255,255,255,
            112.5, -17, -100,
            0,0,-1,
            2*PI/8,
            9);
  drawWC();
  drawMirror();
  
  drawLampBath();
  
  
  w08.drawit();
  w08.collide(user);
  
  w09.drawit();
  w09.collide(user);
  
  w10.drawit();
  w10.collide(user);
  
  floor6.drawit();
  floor7.drawit();
  ceil6.drawit();
  ceil7.drawit();
  
  noLights();
  lightSpecular(0,0,0);
  ambientLight(100, 100, 100);
  
  // *** Pasillo ***
  
  
  spotLight(255, 255, 100,
            20, wall_height/4, -70,
            0, -1, 0,
            PI/2,
            10);
  
  spotLight(255, 255, 100,
            50, wall_height/4, -70,
            0, -1, 0,
            PI/2,
            5);
  
  spotLight(255, 255, 100,
            80, wall_height/4, -70,
            0, -1, 0,
            PI/2,
            5);
  
  spotLight(255, 255, 100,
            110, wall_height/4, -70,
            0, -1, 0,
            PI/2,
            5);
  
  spotLight(255, 255, 100,
            120, wall_height/4, -50,
            0, -1, 0,
            PI/2,
            5);
  
  spotLight(255, 255, 100,
            120, wall_height/4, -30,
            0, -1, 0,
            PI/2,
            5);
  
  drawGemelas();
  drawCurtain();
  drawDoor();
  drawLamparas();
  
  w15.drawit();
  w15.collide(user);
  
  w07.drawit();
  w07.collide(user);
  
  w14.drawit();
  w14.collide(user);
  
  w03.drawit();
  w03.collide(user);
  
  w16.drawit();
  w16.collide(user);
  
  floor2.drawit();
  floor5.drawit();
  ceil2.drawit();
  ceil5.drawit();
  
  noLights();
  ambientLight(100, 100, 100);
  
  // *** SALON ***
  //lightFalloff(0.9, 0.001, 0.0);
  tv_color.x += .1;
  tv_color.y += .1;
  tv_color.z += .1;
  
  spotLight(noise(tv_color.x) * 255, noise(tv_color.y) * 255, noise(tv_color.z) * 255,
            70, -5, -10,
            0, 0, -1,
            PI/2,
            1);
  
  pointLight(80, 50, 0,
             90, 10, -30);
  
  drawTV();
  drawCouch();
  drawBabadook();
  drawChair();
  drawLampTable();
  drawBookBabadook();
  
  w00.drawit();
  w00.collide(user);
  
  w01.drawit();
  w01.collide(user);
  
  w05.drawit();
  w05.collide(user);
  
  w02.drawit();
  w02.collide(user);
  
  floor0.drawit();
  floor1.drawit();
  ceil0.drawit();
  ceil1.drawit();
}
