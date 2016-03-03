private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .4;  
public void setup() 
{   
	size(640,480);    
	//noLoop(); 
} 
public void draw() 
{  
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380); 
	branchAngle=branchAngle+0.01;   
	drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	if(branchLength<smallestBranch){
        branchLength=100;
	}
	else{
		double angle1=angle+branchAngle;
		double angle2=angle-branchAngle;
		branchLength=branchLength*fractionLength;
		int endX1, endY1, endX2, endY2;
	    endX1 = (int)(x+(branchLength*Math.cos(angle1)));
	    endY1 = (int)(y+(branchLength*Math.sin(angle1)));
	    endX2 = (int)(x+(branchLength*Math.cos(angle2)));
	    endY2 = (int)(y+(branchLength*Math.sin(angle2)));
	    line(x,y,endX1,endY1);
	    drawBranches(endX1,endY1,branchLength, angle1);
	    line(x,y,endX2,endY2);
	    drawBranches(endX2,endY2,branchLength, angle2);
	}
	
} 
                                                                                                                                                                                           
