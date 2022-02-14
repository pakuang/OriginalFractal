public void setup(){
  background(0);
  size(800,800);
}
public void draw(){
  strokeWeight(1);
  myFractal(600,800,200);
  myFractal(500,600,200);
  myFractal(400,400,200);
  myFractal(200,200,200);
  myFractal(100,50,200);
  
}

public void myFractal(int x, int y, int siz){
  triangle(x,y, siz,y+siz, x-siz,y-2*siz);
  if(siz>1){
    fill((int)(Math.random()*256),20,(int)(Math.random()*256),(int)(Math.random()*200));
    myFractal(x,y,siz/2);
    fill((int)(Math.random()*256),20,(int)(Math.random()*256),(int)(Math.random()*200));
    myFractal(x,y,siz/3);
  }
}
