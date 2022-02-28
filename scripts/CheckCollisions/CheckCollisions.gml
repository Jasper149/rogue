// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckCollisionsx(){
if (place_meeting(x+hsp,y,oWall)) 
{
	while (!place_meeting(x+sign(hsp),y,oWall)) 
	{
	x=x+sign(hsp);
	}
	hsp=0;
	hsp_sprint=0;
}
}

function CheckCollisiony(){
	//verticle collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
	y=y+sign(vsp);
	}
	vsp=0;
	jump_current=jump_number
}
}