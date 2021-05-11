public class Vector2
{
  //***************************
  // Properties: X and Y, All start at origin, 
  //***************************
  
  float x;
  float y;
  
  //***************************
  // Constructor
  //***************************
  
  public Vector2(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
  
  //***************************
  // Arithmetic Operations
  //***************************
  
  // Compute the Vector Sum of this + other.
  public Vector2 add(Vector2 other)
  {
    return new Vector2(this.x + other.x, this.y + other.y);
  }
  
  // Compute the Vector Difference this - other
  public Vector2 subtract(Vector2 other)
  {
    return new Vector2(this.x - other.x, this.y - other.y);
  }
  
  // Compute |this| the Magnitude (length) of this vector.
  public float mag()
  {
    return(sqrt(this.x * this.x + this.y * this.y));
  }
  
  // Compute the Dot Product this*other
  public float dotProduct(Vector2 other)
  {
    return(this.x * other.x + this.y * other.y);
  }
  
  // Compute the additive inverse Vector -this.
  public Vector2 inverse()
  {
    return new Vector2(this.x * -1, this.y *-1);
  }
  
  // Compute a Unit Vector in the same direction as this vector.
  public Vector2 unitVector()
  {
    //vector in the same direction of this vector with a magnitude of 1 use scale method
    //vector/magnitude
    return this.scale(1/this.mag());
  }
  
  public Vector2 scale(float c)
  {
    return new Vector2(c * this.x, c * this.y);
  }
  
  public Vector2 perpendicular()
  {
    return new Vector2(this.y, this.x * -1);
  }
  
  public Vector2 rotate(float rads)
  {
    float tx = x;
    float ty = y;
    float nx = cos(rads)*tx - sin(rads)*ty;
    float ny = sin(rads)*tx + cos(rads)*ty;
    return new Vector2(nx, ny);
  }
}