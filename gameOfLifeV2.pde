float scale=300;
float[] trans={300,400};
float transConstant=80;
float scaleConstant=0.98;
float[][] frameVertices= new float[4][2];
boolean[] keysDown={false,false,false,false,false,false,false};
boolean mouseDown=false;
int[] hoverBox={0,0};
boolean play=true;
boolean clickSpace=false;

int[][] grid= new int[601][601];
int[][] newGrid= new int[601][601];
int counter=0;

void setup(){
  size(1200,800);
  for (int i =0; i<600;i++){
    for (int j =0; j<600;j++){
      //grid[i][j]=0;
      
      //Sets random value to each square
      grid[i][j]=0;
      //grid[i][j]=(int)(Math.random()*4);
    }
  }
}

void draw(){
  //println("scale:"+scale+" trans[0]:"+trans[0]+" trans[1]:"+trans[1]);
  clear();
  background(100,0,0);
  
  if (keysDown[6]){
    if (!clickSpace){
      clickSpace=true;
    }
  }
  else{
    if (clickSpace){
      play=!play;
      clickSpace=false;
    }
  }
  
  counter=0;
  if(frameCount%5==0 && play){
    for (int i =0; i<=600;i++){
      for (int j =0; j<=600;j++){
        
        counter=0;
        
        //Testing for all 8 neighbors
        
        if(grid[(i+1)%601][(j+1)%601]==1){
          counter++;
        }
        if(grid[(i+1)%601][j]==1){
          counter++;
        }
        if(grid[(i+1)%601][(j+600)%601]==1){
          counter++;
        }
        if(grid[i][(j+1)%601]==1){
          counter++;
        }
        if(grid[i][(j+600)%601]==1){
          counter++;
        }
        if(grid[(i+600)%601][(j+1)%601]==1){
          counter++;
        }
        if(grid[(i+600)%601][j]==1){
          counter++;
        }
        if(grid[(i+600)%601][(j+600)%601]==1){
          counter++;
        }
        
        //Rules of the game
        
        if (counter<2 && grid[i][j]==1){
          newGrid[i][j]=0;
        }
        if (counter>3 && grid[i][j]==1){
          newGrid[i][j]=0;
        }
        if (counter==3 && grid[i][j]==0){
          newGrid[i][j]=1;
        }
        if ((counter==2 || counter==3) && grid[i][j]==1){
          newGrid[i][j]=1;
        }
        
      }
    }
    
    for (int i =0; i<=600;i++){
      for (int j =0; j<=600;j++){
        grid[i][j]=newGrid[i][j];
      }
    }
  }
  
  
  if(keysDown[0] && !keysDown[1]){
    scale*=scaleConstant;
  }
  else if(keysDown[1] && !keysDown[0]){
    scale*=1/scaleConstant;
  }
  
  if(keysDown[2] && !keysDown[3]){
    trans[1]+=scale/transConstant;
  }
  else if(keysDown[3] && !keysDown[2]){
    trans[1]-=scale/transConstant;
  }
  
  if(keysDown[4] && !keysDown[5]){
    trans[0]+=scale/transConstant;
  }
  else if(keysDown[5] && !keysDown[4]){
    trans[0]-=scale/transConstant;
  }
  
  fill(0);
  stroke(255);
  
  fill(0,255,0);
  //(400,200)
  //ellipse((400+scale/2-trans[0])*1200/scale,(200+scale/2-trans[1])*800/scale,100*1200/scale,100*1200/scale);
  
  
  fill(0);
  
  rect((scale/2-trans[0])*800/scale+200,(scale/2-trans[1])*800/scale,600*800/scale,600*800/scale);
  
  fill(255);
  
  for (int i =0; i<600;i++){
    for (int j =0; j<600;j++){
      if (grid[i][j]==1){
        rect((i+scale/2-trans[0])*800/scale+200,(j+scale/2-trans[1])*800/scale,800/scale,800/scale);
      }
    }
  }
  
  hoverBox[0]=floor((mouseX-200)*scale/800+trans[0]-scale/2);
  hoverBox[1]=floor((mouseY)*scale/800+trans[1]-scale/2);
  
  fill(0,255,0);
  rect((hoverBox[0]+scale/2-trans[0])*800/scale+200,(hoverBox[1]+scale/2-trans[1])*800/scale,800/scale,800/scale);

  if (mouseDown){
    grid[hoverBox[0]][ hoverBox[1]]=1;
  }

  stroke(0,255,0);
  strokeWeight(0);

}