void setup(){
  size(400,400);
  background(0);
  strokeWeight(2);
}
public class Lightning{
  float x,y,px,py;
  public Lightning(float x, float y){
    this.x=x;
    this.y=y;
    this.px=x;
    this.py=0;
  }
  public void run(){
    py=0;
    while(y<height){
      x+=(float)(Math.random()*18-9);
      y+=(float)(Math.random()*9);  
      line(px,py,x,y);
      px=x; py=y;
      
    }
  }
}

void mouseClicked(){
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  Lightning one= new Lightning(mouseX,0);
  one.run();
  Lightning two=new Lightning(one.x,one.y);
  two.run();
  
}
void draw(){
  fill(0,0,0,20);
  rect(0,0,width,height); 
};
