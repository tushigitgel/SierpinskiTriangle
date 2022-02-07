public void setup(){
  size(800,800);
  background(0);
}
int tri = 200;
int C = 0;
public void draw(){
  sierpinski(20,700,tri);
}
public void mousePressed(){
    background((int)(Math.random()*150),(int)(Math.random()*170),(int)(Math.random()*150));
    C = 0;
    tri = tri + 75;
}
public void sierpinski(int x, int y, int len){
    if(len <= 10){
      if(C <= 0){
        stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        C = C + 1;
      }
      triangle(x, y, x + (len/2), y - len, x + len, y);
    }
    else{
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
