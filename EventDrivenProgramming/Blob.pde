public class Blob extends Sprite 
{
  protected float r;
  protected color myColor;
  
  //public Event onCollision;
  
  //void onCollisionWith(Sprite other)
  //{
  //  //if the Sprite is also a Blob
  //  if(other instanceof Blob)
  //  {
  //    color temp = myColor;
  //    myColor = ((Blob) other).myColor;
  //    ((Blob)other).myColor = temp;
  //  }
    
  //  onCollision.trigger(this, other);
  //}
  
  public Blob(float x, float y)
  {
   super(x, y); 
   myColor = color(random(255), random(255), random(255));
  }
  
  public Blob(Vector2 s)
  {
    super(s); 
  }
  
  public void drawSprite()
  {
    fill(myColor);
    ellipse(pos.x, pos.y, 125, 125);
    }
  
  float getRadius()
  {
    return r;
  }
  
  Vector2 getPosition()
  {
    return pos;
  }
  
  //boolean collidesWith(ICollisionBox other)
  //{
  //  float distance = this.pos.subtract(other.getPosition()).mag();
  //  return distance < this.r + other.getRadius();
  //}
  
  public void keyboardControl()
  {
    if(key == 'w') 
    {
      vel = new Vector2(0, -2);
    }
    
    if(key == 's')
    {
      vel = new Vector2(0, 2);
    }
    
    if(key == 'a')
    {
      vel = new Vector2(-2, 0);
    }
    
    if(key == 'd')
    {
      vel = new Vector2(2, 0);
    }
  }
}