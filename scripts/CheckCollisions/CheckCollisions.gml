// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function CheckCollisionsx(){
move = key_right-key_left;

hsp=move*walksp

	hsp_sprint=hsp*2

//horizontal collision
if (place_meeting(x+hsp,y,oWall)) 
{
	while (!place_meeting(x+sign(hsp),y,oWall)) 
	{
	x=x+sign(hsp);
	}
	hsp=0;
	hsp_sprint=0;
}


if (key_sprint=1)
{
hsp=hsp_sprint

}
else
{
	hsp=hsp
	
}

function CheckCollisiony(){



if (key_jump) and jump_current>-1
{
jump_current--;
vsp=-8;
}

if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
	y=y+sign(vsp);
	}
	jump_current=jump_number
	vsp=0;
}
function CheckPotion(){
	potion_active=0
	if(potion_active) and oPlayer.hp<3 and global.potion>0 
{
	global.potion=global.potion-1
	oPlayer.hp=(oPlayer.hp+1)
	potion_timer=-2/room_speed
}
}

}
}