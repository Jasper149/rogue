/// @description Insert description here
// You can write your code in this editor
if (invic)
{
	invTimer-= 1/room_speed;
	if(invTimer <0)
{
	invTimer=0.5
	invic=false;
}
}

xDirection = sign(oPlayer.x-x)
hsp=walksp*xDirection
 	vsp=vsp+grv;

 
 //horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
	x=x+sign(hsp);
	}
	hsp=0;
}
 
 
 if (place_meeting(x+hsp,y,oEnemyFollow)) 
{
while (!place_meeting(x+sign(hsp),y,oEnemyFollow))
	{
	x=x+sign(hsp);
	}
	hsp=0;
}


if (place_meeting(x+hsp,y,oPlayer)) 
{
	while (!place_meeting(x+sign(hsp),y,oPlayer)) 
	{
	x=x+sign(hsp);
	}
	hsp=0
}

	
 if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
	y=y+sign(vsp);
	}
	vsp=0;
}
 y=y+vsp
  
if (abs(oPlayer.x-x) <500) and (!global.rewind)
   { 
	x=x+hsp
   }

 