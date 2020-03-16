

PImage[] textures_test;

PImage pasillo_papel;
PImage salon_papel;
PImage bath_papel;

PImage BROWN_NOGAL, GRAY_150, GRAY_80;

void setupImages()
{
  textures_test = new PImage[] {
                                  salon_papel,
                                  salon_papel,
                                  salon_papel,
                                  salon_papel,
                                  salon_papel,
                                  salon_papel
                               };
  pasillo_papel = loadImage(".\\data\\imagen\\pasillo.jpg");
  salon_papel = loadImage(".\\data\\imagen\\salon.jpg");
  bath_papel = loadImage(".\\data\\imagen\\bathroom.png");
  
  BROWN_NOGAL = createImage(100, 100, RGB);
  BROWN_NOGAL.loadPixels();
  for(int i = 0; i < 100*100; i++) BROWN_NOGAL.pixels[i] = color(56, 37, 31);
  BROWN_NOGAL.updatePixels();
  
  GRAY_150 = createImage(100, 100, RGB);
  GRAY_150.loadPixels();
  for(int i = 0; i < 100*100; i++) GRAY_150.pixels[i] = color(150, 150, 150);
  GRAY_150.updatePixels();
  
  GRAY_80 = createImage(100, 100, RGB);
  GRAY_80.loadPixels();
  for(int i = 0; i < 100*100; i++) GRAY_80.pixels[i] = color(80, 80, 80);
  GRAY_80.updatePixels();
}
