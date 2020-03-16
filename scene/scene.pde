
User user;



void setup()
{
  //size(500, 500, P3D);
  fullScreen(P3D);
  
  textSize(40);
  text("Loading scene", width/2 - 20, height/2);
  
  
  user = new User(this, new PVector(20, -10, -15), new PVector(1, 1, 1));
  
  setupImages();
  
  createWalls();
  createFloors();
  createCeils();
  createDecoration();
  
}

void axis()
{
  stroke(255, 0, 0);
  line(0,0,0, 50, 0, 0);

  stroke(0, 255, 0);
  line(0,0,0, 0, 50, 0);

  stroke(0, 0, 255);
  line(0,0,0, 0, 0, 50);
}

void draw()
{
  background(0);
  axis();
  
  user.update();
  
  build(user);
  
  //setLigths();
  
  displayTextHUD("PRESS ESC TO EXIT", 0, 35, 8);
  displayTextHUD("WASD - > Move", 0, height, 8);
  displayTextHUD("MOUSE - > Rotate camera", 0, height - 35, 8);
}

void keyPressed(){

}
