class Snowflake{
  private float x, y, z, df, r, rs, ys;
  private int s, sl, zsiz, c;
  public Snowflake(boolean re){
    rs = (float)(Math.random() * 32 + 64);
    z = (float)(Math.random() * -200);
    x = (float)(Math.random() * width);
    y = (float)(Math.random() * height);
    if(re){
      y = - 250;
    }
    s = (int)(Math.random() * 50 + 50);
    sl = (int)(s / (Math.random() * 4 + 2));
    c = color((int)(Math.random() * 100 + 155), 245, 255);
    df = 0.65;
    zsiz = (int)(Math.random() * 20 + 10);
    ys = 0;
  }
  public void move(){
    ys += 0.5;
    y += ys;
  }
  public int getY(){
    return (int)y;
  }
  public void show(){
    translate(x, y, z);
    r += (float)(Math.PI/rs);
    rotateY(r);
    fractal(0, 0, 0, s, sl, c, df, zsiz);
    rotateY(-r);
    translate(-x, -y, -z);
  }
public void fractal(float x, float y, float z, int size, int sLimit, int mColor, float dFactor, float zsiz){
  fill(mColor);
  translate(x, y, z);
  hexagon3d(0, 0, 0, size, zsiz);
  translate(-x, -y);
  if(size > sLimit){
    translate(x, y);
    fractal(0, -size * dFactor, 0, size/2, sLimit, mColor-10, dFactor, zsiz - 2);
    fractal(-size/2 * (float)Math.sqrt(3) * dFactor, -size/2 * dFactor, 0, size/2, sLimit, mColor-10, dFactor, zsiz - 2);
    fractal(-size/2 * (float)Math.sqrt(3) * dFactor, size/2 * dFactor, 0, size/2, sLimit, mColor-10, dFactor, zsiz - 2);
    fractal(0, size * dFactor, 0, size/2, sLimit, mColor-10, dFactor, zsiz - 2);
    fractal(size/2 * (float)Math.sqrt(3) * dFactor, -size/2 * dFactor, 0, size/2, sLimit, mColor-10, dFactor, zsiz - 2);
    fractal(size/2 * (float)Math.sqrt(3) * dFactor, size/2 * dFactor, 0, size/2, sLimit, mColor-10, dFactor, zsiz - 2);
    translate(-x, -y);
  }
}
public void hexagon3d(float x, float y, float z, float siz, float zsiz){
  stroke(0);
  beginShape();
  vertex(x - siz/2, 0, z - zsiz/2);
  vertex(x - siz/4, y - siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x + siz/4, y - siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x + siz/2, 0, z - zsiz/2);
  vertex(x + siz/4, y + siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x - siz/4, y + siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x - siz/2, 0, z - zsiz/2);
  endShape();
  
  beginShape();
  vertex(x - siz/2, 0, z + zsiz/2);
  vertex(x - siz/4, y - siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  vertex(x + siz/4, y - siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  vertex(x + siz/2, 0, z + zsiz/2);
  vertex(x + siz/4, y + siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  vertex(x - siz/4, y + siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  vertex(x - siz/2, 0, z + zsiz/2);
  endShape();
  
  beginShape();
  vertex(x - siz/2, 0, z - zsiz/2);
  vertex(x - siz/4, y - siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x - siz/4, y - siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  vertex(x - siz/2, 0, z + zsiz/2);
  endShape();
  
  beginShape();
  vertex(x - siz/4, y - siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x + siz/4, y - siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x + siz/4, y - siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  vertex(x - siz/4, y - siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  endShape();
  
  beginShape();
  vertex(x + siz/4, y - siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x + siz/2, 0, z - zsiz/2);
  vertex(x + siz/2, 0, z + zsiz/2);
  vertex(x + siz/4, y - siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  endShape();
  
  beginShape();
  vertex(x + siz/2, 0, z - zsiz/2);
  vertex(x + siz/4, y + siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x + siz/4, y + siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  vertex(x + siz/2, 0, z + zsiz/2);
  endShape();
  
  beginShape();
  vertex(x + siz/4, y + siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x - siz/4, y + siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x - siz/4, y + siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  vertex(x + siz/4, y + siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  endShape();
  
  beginShape();
  vertex(x - siz/4, y + siz/4 * (float)Math.sqrt(3), z - zsiz/2);
  vertex(x - siz/2, 0, z - zsiz/2);
  vertex(x - siz/2, 0, z + zsiz/2);
  vertex(x - siz/4, y + siz/4 * (float)Math.sqrt(3), z + zsiz/2);
  endShape();
}
}
