
class Plane
{
  
  private PVector location;
  private PVector dimension;
  
  private PShape shape;
  
  Plane(PVector location, PVector dimension, PImage texture)
  {
    /*
      location : 3D PVector location
      dimension : 3D PVector dimension [width, 0, height]
    */
    this.location = location;
    this.dimension = dimension;
    
    this.shape = createShape();
    shape.beginShape(QUADS);
      
      shape.textureMode(MODEL);
      shape.texture(texture);
      
      shape.vertex(location.x, location.y, location.z,
                   0, 0);
      shape.vertex(location.x, location.y, location.z - this.dimension.z,
                   0, 1);
      shape.vertex(location.x + this.dimension.x, location.y, location.z - this.dimension.z,
                   1, 1);
      shape.vertex(location.x + this.dimension.x, location.y, location.z,
                   1, 0);
    
    shape.endShape();
  }
  
  public void drawit()
  {
    shape(shape);
  }
}
