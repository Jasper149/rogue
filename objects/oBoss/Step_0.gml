/// @description Insert description here
// You can write your code in this editor

if (boss_invic)
{
	boss_invTimer-= 1/room_speed;
	if(boss_invTimer <0)
{
	boss_invTimer=0.5
	boss_invic=false;
}
}


global.oBoss_xDirection = sign(oPlayer.x-x)
hsp=walksp*global.oBoss_xDirection
 	vsp=vsp+grv;



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


if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
	y=y+sign(vsp);
	}
	vsp=0;
}
y=y+vsp

 
jump_timer-=1/room_speed
if (abs(oPlayer.x-x) <500) and (jump_timer<=1) and (place_meeting(x,y+1,oWall)) and (!global.rewind)

   { 
	vsp=-8
	jump_timer=2
  }
  
 if (abs(oPlayer.x-x) <500) and (!global.rewind)
 {
	 x=x+hsp
 }
 
 
 if (global.rewind)
{
vsp=0
 grv=0
}
 else
 {
 grv=0.12
 }
 
 
 
 