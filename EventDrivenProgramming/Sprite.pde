public abstract class Sprite
{
  protected Vector2 pos;
  protected Vector2 vel;
  
  public Sprite(float x, float y)
  {
    pos = new Vector2(x, y);
    vel = new Vector2(0, 0);
  }
  
  public Sprite(float x, float y, float dx, float dy)
  {
    pos = new Vector2(x, y);
    vel = new Vector2(dx, dy);
  }
  
  public Sprite(Vector2 s)
  {
    pos = s;
    vel = new Vector2(0, 0);
  }
  
  public Sprite(Vector2 s, Vector2 v)
  {
    pos = s;
    vel = v;
  }
  
 public abstract void drawSprite(); //void drawSprite must be in class that extends Sprite (ex. Blob)
  
 public void move()
  {
    //step the position "one frame" by the velocity vector
    pos = pos.add(vel);
    
    if(pos.x > width) pos.x -= width;
    else if(pos.x < 0) pos.x += width; 
    
    if(pos.y > height) pos.y -= height;
    else if(pos.y < 0) pos.y += height;
  }
  
  public void moveTo(Vector2 newPosition)
  {
    pos = newPosition;
  }
  
  public void setVelocity(Vector2 newVelocity)
  {
    vel = newVelocity;
  }
  
  public Vector2 getPosition()
  {
    return pos;
  }
  
  public Vector2 getVecoity()
  {
    return vel;
  }
  
  public float distanceTo(Sprite other)
  {
    Vector2 diff = other.pos.subtract(this.pos); //this is subject, other is direct object
    return diff.mag();
  }
}