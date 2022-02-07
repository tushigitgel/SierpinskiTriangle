public void setup(){
  size(800,800);
  background(0);
}
int tri = 200;
float col1 = (float)(Math.random()*250);
public void draw(){
  sierpinski(20,700,tri);
}
public void mousePressed(){
    background(0);
    stroke(col1, col1, col1);
    tri = tri + 75;
}
public void sierpinski(int x, int y, int len){
    if(len <= 10){
      stroke(250, 70, 80);
      triangle(x, y, x + (len/2), y - len, x + len, y);
    }
    else{
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
