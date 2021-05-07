class Button extends Sprite
{
  public Event onClick;
  
  protected String bText;
  protected color backgroundColor;
  protected color foregroundColor;
  protected float textSize;
  protected float wid;
  protected float ht;
  
  
  public Button(float x, float y, String text)
  {
    super(x, y);
    onClick = new Event(Button.class);
    this.bText = text;
    this.backgroundColor = color(0, 50, 120);
    this.foregroundColor = color(255);
    this.textSize = 18;
    
    this.wid = (0.75*textSize*bText.length());
    this.ht = (textSize * 1.25);
  }
  
  public void drawSprite()
  {
    fill(backgroundColor);
    strokeWeight(3);
    stroke(0);
    rect(x, y, wid, ht);
    fill(foregroundColor);
    strokeWeight(0);
    text(bText, x+textSize, y+textSize*1.125);
  }
  
  public void click()
  {
    if(mouseX >= x && mouseX <= x + wid && mouseY >= y && mouseY <= y+ht)
    {
      println("***Button Clicked!***");
      onClick.trigger(this);
    }
  }
}
