float posX, posY, finPosX, finLen;
int look = 0;
int count;
int comp = 900;

public void setup()
{
		size(900,900);
		translate(900,900);
		rotate((float)Math.PI);
		//ski(0,50,900);
}

public void draw()
{
	background(204);
	translate(900,900);
	rotate((float)Math.PI);
	ski(0,50,900);
	rotate(-(float)Math.PI);
	translate(-900,-900);
}

public void mouseClicked()
{
	if(comp<56)
		comp = 900;
	else
		comp = comp/2;
	System.out.println(comp);
}

public void ski(int x, int y, int len) 
{
	trap1(x,y,len);
	trap2(x,y,len/2);
	trap3(x,y,len/2);
	trap4(x,y,len/2);
	if(len>comp){
		translate(x+len/4,y+(len/4)*(float)(Math.sqrt(3)));
		rotate((float)(-120*Math.PI/180));
		ski(0,0,len/2);
		rotate((float)(120*Math.PI/180));
		translate(-x-len/4,-y-(len/4)*(float)(Math.sqrt(3)));

		translate(x+len/4,y+(len/4)*(float)(Math.sqrt(3)));
		ski(0,0,len/2);
		translate(-x-len/4,-y-(len/4)*(float)(Math.sqrt(3)));

		translate(x+len,y);
		rotate((float)(120*Math.PI/180));
		ski(0,0,len/2);
		rotate((float)(-120*Math.PI/180));
		translate(-x-len,-y);
	}

}

public void trap1(float pX, float pY, float lh)
{
		finPosX = lh;
		translate(pX,pY);
		float leg = lh/2;
		posY = leg/2*((float)(Math.sqrt(3)));
		posX = leg/2;
		float hi = leg/2*((float)(Math.sqrt(3)));
		float le = leg/2;
		line( 0, 0, le, hi);
		line( le, hi, le+leg, hi);
		line( leg+leg/2, hi, lh, 0);
		lh = leg;
		translate(-pX,-pY);
}

public void trap2(float pX, float pY, float lh)
{
		translate(pX,pY);
		rotate((float)(60*Math.PI/180));
		float leg = lh/2;
		float hi = leg/2*((float)(Math.sqrt(3)));
		float le = leg/2;
		line( 0, 0, le, -hi);
		line( le, -hi, le+leg, -hi);
		line( leg+leg/2, -hi, lh, 0);
		rotate((float)(-60*Math.PI/180));
		translate(-pX,-pY);
}

public void trap3(float pX, float pY, float lh)
{
		translate(pX+posX,pY+posY);
		float leg = lh/2;
		float hi = leg/2*((float)(Math.sqrt(3)));
		float le = leg/2;
		line( 0, 0, le, hi);
		line( le, hi, le+leg, hi);
		line( leg+leg/2, hi, lh, 0);
		translate(-pX-posX,-pY-posY);
}

public void trap4(float pX, float pY, float lh)
{
		translate(pX+finPosX,pY);
		rotate((float)(120*Math.PI/180));
		float leg = lh/2;
		float hi = leg/2*((float)(Math.sqrt(3)));
		float le = leg/2;
		line( 0, 0, le, hi);
		line( le, hi, le+leg, hi);
		line( leg+leg/2, hi, lh, 0);
		rotate((float)(-120*Math.PI/180));
		translate(-(pX+finPosX),-pY);
}
