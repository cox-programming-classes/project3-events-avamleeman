// PASTE YOUR SPRITE CLASS CODE HERE!
abstract class Sprite
{
  float x, y;
  
  public Sprite(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
  
  public abstract void drawSprite();
}
