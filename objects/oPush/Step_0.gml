/// @description Insert description here
// You can write your code in this editor
vsp=vsp+grv

CheckInput()

if (place_meeting(x,y,oPlayer)) and (!place_meeting(x+oPlayer.hsp,y,oWall)) 
{
	x=x+oPlayer.hsp
	
}   

if (place_meeting(x,y+vsp,oPush)) and (!place_meeting(x,y+oPush.hsp,oWall)) 
{
	x=x+oPush.hsp
	
}   



if (place_meeting(x+oPlayer.hsp,y,oWall))
{
	oPlayer.hsp=0
}



if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
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

if (place_meeting(x,y+vsp,oPush))
{
	while (!place_meeting(x,y+sign(vsp),oPush))
	{
	y=y+sign(vsp);
	}

	vsp=0;
}

if (place_meeting(x+hsp,y,oPush)) 
{
	while (!place_meeting(x+sign(hsp),y,oPush)) 
	{
	x=x+sign(hsp);
	}                                          
	hsp=0;               
}    

y=y+vsp