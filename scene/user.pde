
import queasycam.*;

class User extends QueasyCam {
  
  PVector position;
  private float height0;
  public final PVector dimension;
  
  User(PApplet applet, PVector position, PVector dimension)
  {
    super(applet);
    super.position = position;
    this.height0 = position.y;
    this.dimension = dimension;
    
    this.speed = 0.1; // Movement speed
    this.sensitivity = 1; // Mouse sensitivity
  }
  
  public void update() 
  {
    super.position.y = height0;
  }
  
  public PVector position() {
    return super.position;
  }
  
  public void position(PVector position) {
    super.position = position;
  }
  
  public PVector north()
  {
    return PVector.add(super.position, new PVector(0, 0, -(this.dimension.z/2.0)));
  }
  
  public PVector south()
  {
    return PVector.add(super.position, new PVector(0, 0, +(this.dimension.z/2.0)));
  }
  
  public PVector east()
  {
    return PVector.add(super.position, new PVector(this.dimension.x/2.0, 0, 0));
  }
  
  public PVector west()
  {
    return PVector.add(super.position, new PVector(-(this.dimension.x/2.0), 0, 0));
  }
  
  public PVector north_west()
  {
    return PVector.add(super.position, new PVector(-dimension.x/2.0, 0, -dimension.z/2));
  }
  
  public PVector south_west()
  {
    return PVector.add(super.position, new PVector(-dimension.x/2.0, 0, +dimension.z/2));
  }
  
  public PVector north_east()
  {
    return PVector.add(super.position, new PVector(+dimension.x/2.0, 0, -dimension.z/2));
  }
  
  public PVector south_east()
  {
    return PVector.add(super.position, new PVector(+dimension.x/2.0, 0, +dimension.z/2));
  }
  
}
