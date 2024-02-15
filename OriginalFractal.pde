private Snowflake[] snowflakes = new Snowflake[10];
private boolean pause = false;
public void setup(){
  size(2000, 1000, P3D);
  for(int i = 0; i < snowflakes.length; i++){
    snowflakes[i] = new Snowflake(false);
  }
}
public void draw(){
  if(!pause){
    background(125);
    for(int i = 0; i < snowflakes.length; i++){
      snowflakes[i].move();
      snowflakes[i].show();
      if(snowflakes[i].getY() > height + 100){
        snowflakes[i] = new Snowflake(true);
      }
    }
  }
}
public void mousePressed(){
  pause = !pause;
}
