
class Wall
{
  
  private final PVector location;
  private final PVector dim;
  
  private final PShape[] shape;
  
  Wall(PVector location, PVector dim, PImage[] textures, int[] texture_dim)
  {
    /*
      start_point, end_point : 3D points that indicates start and end points
      dim : dimensions in 3 axes 
    */
    assert textures.length == texture_dim.length;
    
    this.location = location;
    this.dim = dim;
    
    // create shape
    shape = new PShape[6];
    
    textureWrap(REPEAT);
    // WEST
    shape[0] = createShape();
    
    shape[0].beginShape(QUAD);
    
      shape[0].textureMode(NORMAL);
      shape[0].texture(textures[0]);
      
      shape[0].vertex(this.location.x, this.location.y, this.location.z, 
                   0, 0);
      shape[0].vertex(this.location.x, this.location.y - this.dim.y, this.location.z,
                   0, texture_dim[0]);
      shape[0].vertex(this.location.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   texture_dim[0], texture_dim[0]);
      shape[0].vertex(this.location.x, this.location.y, this.location.z - this.dim.z, 
                   texture_dim[0], 0);
    
    shape[0].endShape();
    
    // EAST
    shape[1] = createShape();
    
    shape[1].beginShape(QUAD);
      shape[1].textureMode(NORMAL);
      shape[1].texture(textures[1]);
      
      shape[1].vertex(this.location.x + this.dim.x, this.location.y, this.location.z,
                   0, 0);
      shape[1].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z,
                   0, texture_dim[1]);
      shape[1].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   texture_dim[1], texture_dim[1]);
      shape[1].vertex(this.location.x + this.dim.x, this.location.y, this.location.z - this.dim.z,
                   texture_dim[1], 0);
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
                   0, texture_dim[2]);
      shape[2].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   texture_dim[2], texture_dim[2]);
      shape[2].vertex(this.location.x + this.dim.x, this.location.y, this.location.z - this.dim.z,
                   texture_dim[2], 0);
    shape[2].endShape();
    
    // SOUTH
    shape[3] = createShape();
    
    shape[3].beginShape(QUAD);
      shape[3].textureMode(NORMAL);
      
      shape[3].texture(textures[3]);
      
      shape[3].vertex(this.location.x, this.location.y, this.location.z,
                   0, 0);
      shape[3].vertex(this.location.x, this.location.y - this.dim.y, this.location.z,
                   0, texture_dim[3]);
      shape[3].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z,
                   texture_dim[3], texture_dim[3]);
      shape[3].vertex(this.location.x + this.dim.x, this.location.y, this.location.z,
                   texture_dim[3], 0);
    shape[3].endShape();
    
    // TOP
    shape[4] = createShape();
    
    shape[4].beginShape(QUAD);
      
      shape[4].textureMode(NORMAL);
      shape[4].texture(textures[4]);
      
      shape[4].vertex(this.location.x, this.location.y - this.dim.y, this.location.z,
                   0, 0);
      shape[4].vertex(this.location.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   0, texture_dim[4]);
      shape[4].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z - this.dim.z,
                   texture_dim[4], texture_dim[4]);
      shape[4].vertex(this.location.x + this.dim.x, this.location.y - this.dim.y, this.location.z,
                   texture_dim[4], 0);
     
    shape[4].endShape();
    
    // BOTTOM
    shape[5] = createShape();
    
    shape[5].beginShape(QUAD);
      
      shape[5].textureMode(NORMAL);
      shape[5].texture(textures[5]);
      
      shape[5].vertex(this.location.x, this.location.y, this.location.z,
                   0, 0);
      shape[5].vertex(this.location.x, this.location.y, this.location.z - this.dim.z,
                   0, texture_dim[5]);
      shape[5].vertex(this.location.x + this.dim.x, this.location.y, this.location.z - this.dim.z,
                   texture_dim[5], texture_dim[5]);
      shape[5].vertex(this.location.x + this.dim.x, this.location.y, this.location.z,
                   texture_dim[5], 0);
    
    shape[5].endShape();
    
  }
  
  public void drawit() {
    for(PShape s : shape) shape(s);
  }
  
  private boolean inside(PVector point)
  {
    PVector wall_north = PVector.add(this.location, new PVector(this.dim.x/2.0, 0, -this.dim.z));
    PVector wall_south = PVector.add(this.location, new PVector(this.dim.x/2.0, 0, 0));
    PVector wall_east = PVector.add(this.location, new PVector(this.dim.x, 0, -this.dim.z/2.0));
    PVector wall_west = PVector.add(this.location, new PVector(0, 0, -this.dim.z/2.0));
    
    return wall_west.x < point.x && point.x < wall_east.x &&
           wall_north.z < point.z && point.z < wall_south.z;
  }
  
  public void collide(User u)
  {
    
    PVector wall_north = PVector.add(this.location, new PVector(this.dim.x/2.0, 0, -this.dim.z));
    PVector wall_south = PVector.add(this.location, new PVector(this.dim.x/2.0, 0, 0));
    PVector wall_east = PVector.add(this.location, new PVector(this.dim.x, 0, -this.dim.z/2.0));
    PVector wall_west = PVector.add(this.location, new PVector(0, 0, -this.dim.z/2.0));
    
    // West collision
    if(inside(u.north_east()) && inside(u.south_east()))
    {
      float shift = abs(wall_west.x - u.east().x);
      u.position(PVector.add(u.position(), new PVector(-shift, 0, 0)));
    }
    
    // East collision
    if(inside(u.north_west()) && inside(u.south_west()))
    {
      float shift = abs(wall_east.x - u.west().x);
      u.position(PVector.add(u.position(), new PVector(+shift, 0, 0)));
    }
    
    // North collision
    if(inside(u.south_east()) && inside(u.south_west()))
    {
      float shift = abs(wall_north.z - u.south().z);
      u.position(PVector.add(u.position(), new PVector(0, 0, -shift)));
    }
    
    // South collision
    if(inside(u.north_east()) && inside(u.north_west()))
    {
      float shift = abs(wall_south.z - u.north().z);
      u.position(PVector.add(u.position(), new PVector(0, 0, +shift)));
    }
    
  }
}
