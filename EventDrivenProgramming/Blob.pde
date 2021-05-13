public class Blob extends Sprite 
{
  protected float r;
  protected color myColor;
  SoundFile soundfile;
  public Event onClick;
  
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
  
  public Blob(float x, float y, PApplet app)
  {
   super(x, y); 
   myColor = color(random(255), random(255), random(255));
   setVelocity(new Vector2(random(-5, 5), random(-5, 5)));
   soundfile = new SoundFile(app, "RingSound.wav");
   onClick = new Event(Blob.class);
  }
  
  public Blob(Vector2 s)
  {
    super(s); 
  }
  
  public void playSound()
  {
    soundfile.play();
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
  
  public void click()
  {
    if(mouseX >= pos.x - 125/2 && mouseX <= pos.x + 125/2 && mouseY >= pos.y - 125/2 && mouseY <= pos.y+125/2)
    {
      println("***Blob Clicked!***");
      onClick.trigger(this);
    }
  }
  
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