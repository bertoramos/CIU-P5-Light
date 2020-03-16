import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import queasycam.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class scene extends PApplet {


User u;
Wall w;

PImage test1, test2, test3, test4, test5, test6;

public void setup()
{
  test1 = loadImage(".\\test1.jpg");
  test2 = loadImage(".\\test2.jpg");
  test3 = loadImage(".\\test3.jpg");
  test4 = loadImage(".\\test4.jpg");
  test5 = loadImage(".\\test5.jpg");
  test6 = loadImage(".\\test6.jpg");

  PImage[] textures = new PImage[]{test1, test2, test3, test4, test5, test6};

  
  u = new User(this, new PVector(0, 0, 50), new PVector(1, 1, 1));

  w = new Wall(new PVector(0,0,0), new PVector(10, 10, 10), textures);

}

public void axis()
{
  stroke(255, 0, 0);
  line(0,0,0, 50, 0, 0);

  stroke(0, 255, 0);
  line(0,0,0, 0, 50, 0);

  stroke(0, 0, 255);
  line(0,0,0, 0, 0, 50);
}

public void draw()
{
  background(255);
  axis();

  u.update();
  w.drawit();

  w.collide(u);
}

public void keyPressed(){

}

public boolean between(float a, float x, float b)
{
  return a < x && x < b;
}

class Wall
{
  
  private final PVector location;
  private final PVector dim;
  
  private final PShape[] shape;
  
  Wall(PVector location, PVector dim, PImage[] textures)
  {
    /*
      start_point, end_point : 3D points that indicates start and end points
      dim : dimensions in 3 axes 
    */
    this.location = location;
    this.dim = dim;
    
    // create shape
    shape = new PShape[6];
    
    // WEST
    shape[0] = createShape();
    shape[0].beginShape(QUAD);
    
      shape[0].textureMode(NORMAL);
      shape[0].texture(textures[0]);
      
      shape[0].vertex(this.location.x, this.location.y, this.location.z, 
                   0, 0);
      shape[0].vertex(this.location.x, this.location.y - this.dim.y, this.location.z,
                   0, 1);
      shape[0].vertex(this.location.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   1, 1);
      shape[0].vertex(this.location.x, this.location.y, this.location.z - this.dim.z, 
                   1, 0);
    
    shape[0].endShape();
    
    // EAST
    shape[1] = createShape();
    shape[1].beginShape(QUAD);
      shape[1].textureMode(NORMAL);
      shape[1].texture(textures[1]);
      
      shape[1].vertex(this.location.x + this.dim.x, this.location.y, this.location.z,
                   0, 0);
      shape[1].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z,
                   0, 1);
      shape[1].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   1, 1);
      shape[1].vertex(this.location.x + this.dim.x, this.location.y, this.location.z - this.dim.z,
                   1, 0);
    shape[1].endShape();
    
    // NORTH
    shape[2] = createShape();
    shape[2].beginShape(QUAD);
      shape[2].textureMode(NORMAL);
      shape[2].texture(textures[2]);
    
      shape[2].texture(textures[2]);
      // North
      shape[2].vertex(this.location.x, this.location.y, this.location.z - this.dim.z,
                   0, 0);
      shape[2].vertex(this.location.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   0, 1);
      shape[2].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   1, 1);
      shape[2].vertex(this.location.x + this.dim.x, this.location.y, this.location.z - this.dim.z,
                   1, 0);
    shape[2].endShape();
    
    // SOUTH
    shape[3] = createShape();
    shape[3].beginShape(QUAD);
      shape[3].textureMode(NORMAL);
      shape[3].texture(textures[3]);
    
      shape[3].vertex(this.location.x, this.location.y, this.location.z,
                   0, 0);
      shape[3].vertex(this.location.x, this.location.y - this.dim.y, this.location.z,
                   0, 1);
      shape[3].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z,
                   1, 1);
      shape[3].vertex(this.location.x + this.dim.x, this.location.y, this.location.z,
                   1, 0);
    shape[3].endShape();
    
    // TOP
    shape[4] = createShape();
    shape[4].beginShape(QUAD);
      
      shape[4].textureMode(NORMAL);
      shape[4].texture(textures[4]);
      
      shape[4].vertex(this.location.x, this.location.y - this.dim.y, this.location.z,
                   0, 0);
      shape[4].vertex(this.location.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   0, 1);
      shape[4].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   1, 1);
      shape[4].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z,
                   1, 0);
     
    shape[4].endShape();
    
    // BOTTOM
    shape[5] = createShape();
    shape[5].beginShape(QUAD);
      
      shape[5].textureMode(NORMAL);
      shape[5].texture(textures[5]);
      
      shape[5].vertex(this.location.x, this.location.y, this.location.z,
                   0, 0);
      shape[5].vertex(this.location.x, this.location.y, this.location.z - this.dim.z,
                   0, 1);
      shape[5].vertex(this.location.x + this.dim.x, this.location.y, this.location.z - this.dim.z,
                   1, 1);
      shape[5].vertex(this.location.x + this.dim.x, this.location.y, this.location.z,
                   1, 0);
    
    shape[5].endShape();
    
  }
  
  public void drawit() {
    for(PShape s : shape) shape(s);
  }
  
  public void collide(User u)
  {
    
    PVector wall_north = PVector.add(this.location, new PVector(this.dim.x/2.0f, 0, -this.dim.z));
    PVector wall_south = PVector.add(this.location, new PVector(this.dim.x/2.0f, 0, 0));
    PVector wall_east = PVector.add(this.location, new PVector(this.dim.x, 0, -this.dim.z/2.0f));
    PVector wall_west = PVector.add(this.location, new PVector(0, 0, -this.dim.z/2.0f));
    
    // West collision
    if(
        (wall_west.x < u.east().x && u.east().x < wall_east.x)
          &&
       !(
         (u.north().z > wall_south.z && u.south().z > wall_south.z)
          ||
         (u.north().z < wall_north.z && u.south().z < wall_north.z)
        )
      )
    {
      float shift = abs(wall_west.x - u.east().x);
      u.position(PVector.add(u.position(), new PVector(-shift, 0, 0)));
    }
    
    // East collision
    if(
        (wall_west.x < u.west().x && u.west().x < wall_east.x)
          &&
       !(
         (u.north().z > wall_south.z && u.south().z > wall_south.z)
          ||
         (u.north().z < wall_north.z && u.south().z < wall_north.z)
        )
      )
    {
      float shift = abs(wall_east.x - u.west().x);
      u.position(PVector.add(u.position(), new PVector(+shift, 0, 0)));
    }
    /*
    // North collision
    if(
        (wall_north.z < u.south().z && u.south().z < wall_south.z)
          &&
       !(
         (u.west().x < wall_west.x && u.east().x < wall_west.x)
           ||
         (u.west().x > wall_east.x && u.east().x > wall_east.x)
        )
      )
    {
      float shift = abs(wall_north.z - u.south().z);
      u.position(PVector.add(u.position(), new PVector(0, 0, +shift)));
    }
    
    // South collision
    if(
        (wall_north.z < u.north().z && u.north().z < wall_south.z)
          &&
       !(
         (u.west().x < wall_west.x && u.east().x < wall_west.x)
           ||
         (u.west().x > wall_east.x && u.east().x > wall_east.x)
        )
      )
    {
      float shift = abs(wall_south.z - u.north().z);
      u.position(PVector.add(u.position(), new PVector(0, 0, -shift)));
    }
    */
  }
}



class User extends QueasyCam {
  
  PVector position;
  public final PVector dimension;
  
  User(PApplet applet, PVector position, PVector dimension)
  {
    super(applet);
    super.position = position;
    this.dimension = dimension;
    
    this.speed = 0.05f; // Movement speed
    this.sensitivity = 1; // Mouse sensitivity
  }
  
  public void update() 
  {
    
  }
  
  public PVector position() {
    return super.position;
  }
  
  public void position(PVector position) {
    super.position = position;
  }
  
  public PVector north()
  {
    return PVector.add(super.position, new PVector(0, 0, -(this.dimension.z/2.0f)));
  }
  
  public PVector south()
  {
    return PVector.add(super.position, new PVector(0, 0, +(this.dimension.z/2.0f)));
  }
  
  public PVector east()
  {
    return PVector.add(super.position, new PVector(this.dimension.x/2.0f, 0, 0));
  }
  
  public PVector west()
  {
    return PVector.add(super.position, new PVector(-(this.dimension.x/2.0f), 0, 0));
  }
  
}
  public void settings() {  size(500, 500, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "scene" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
