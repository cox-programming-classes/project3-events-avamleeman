Button button = new Button(100, 100, "Button");

ArrayList< Blob> theBlobs;
//ArrayList< ICollisionBox> collidingObjects;

void setup()
{
  size(800, 800);

  button.onClick.bind(this, "button_clicked");

  theBlobs = new ArrayList< Blob>();

  //collidingObjects = new ArrayList< ICollisionBox>();
  // collidingObjects.add(blob);
  //blob.onCollision.bind(this, "blockCollision_action");
}

void button_clicked(Button sender)
{
  Blob blob = new Blob(random(800), random(800));
  theBlobs.add(blob);
}

//void blockCollision_action(Blob sender, Sprite other)
//{
//  sender.moveTo(new Vector2(100, 100));
//  other.moveTo(new Vector2(500, 500));
//}

//void checkCollisions()
//{
//  for(int i = 0; i < collidingObjects.size() - 1; i++)
//  {
//    ICollisionBox obj = collidingObjects.get(i);

//    for(int j = i + 1; j < collidingObjects.size() - 1; j++)
//   {
//    ICollisionBox obj2 = collidingObjects.get(j);

//      if(obj.collidesWith(obj2)) 
//      {
//        textSize(50);
//        fill(255, 0 , 0);
//        text("Boom", 100, 500);
//      }
//    }
//  }
//}

void draw()
{ 
  background(255);
  button.drawSprite();
  
  for (Blob b : theBlobs)
  {
    b.move();
    b.drawSprite();
  }
}

void mouseClicked()
{
  button.click();
}