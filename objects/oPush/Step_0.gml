/// @description Insert description here
// You can write your code in this editor
vsp=vsp+grv

CheckInput()

if (!place_meeting(x+oPlayer.hsp,y,oWall)) and (key_grab) and (abs(oPlayer.x-x) <80) and (abs(oPlayer.y-y) <10)
{
	hsp=oPlayer.hsp
	vsp=oPlayer.vsp
	
}   
else 
{
	hsp=0
}


if (!key_grab)
{
	hsp=0
}

if (place_meeting(x+hsp,y,oPlayer)) 
{
	while (!place_meeting(x+sign(hsp),y,oPlayer)) 
	{
	x=x+sign(hsp);
	}                                          
	hsp=0;               
}   


if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
	y=y+sign(vsp);
	}
	vsp=0;
}

if (place_meeting(x,y+vsp,oPush))
{
	while (!place_meeting(x,y+sign(vsp),oPush))
	{
	y=y+sign(vsp);
	}
	vsp=0;
}

if (place_meeting(x+hsp,y,oWall)) 
{
	while (!place_meeting(x+sign(hsp),y,oWall)) 
	{
	x=x+sign(hsp);
	}                                          
	hsp=0;               
}  

if (place_meeting(x+hsp,y,oPush)) 
{
	while (!place_meeting(x+sign(hsp),y,oPush)) 
	{
	x=x+sign(hsp);
	}                                          
	hsp=0;               
}  

x=x+hsp
y=y+vsp