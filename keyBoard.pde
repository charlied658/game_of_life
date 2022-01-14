void keyPressed(){
if (keyCode==87){
    keysDown[0]=true;
  }
  if (keyCode==83){
    keysDown[1]=true;
  }
  if (keyCode==40){
    keysDown[2]=true;
  }
  if (keyCode==38){
    keysDown[3]=true;
  }
  if (keyCode==39){
    keysDown[4]=true;
  }
  if (keyCode==37){
    keysDown[5]=true;
  }
  if (keyCode==32){
    keysDown[6]=true;
  }
}

void keyReleased(){
  if (keyCode==87){
    keysDown[0]=false;
  }
  if (keyCode==83){
    keysDown[1]=false;
  }
  if (keyCode==40){
    keysDown[2]=false;
  }
  if (keyCode==38){
    keysDown[3]=false;
  }
  if (keyCode==39){
    keysDown[4]=false;
  }
  if (keyCode==37){
    keysDown[5]=false;
  }
  if (keyCode==32){
    keysDown[6]=false;
  }
}

void mousePressed(){
  mouseDown=true;
}

void mouseReleased(){
  mouseDown=false;
}