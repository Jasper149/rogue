// @description Insert description here
// You can write your code in this editor
CheckInput()

if(state == states.walking){
	StatePlayerWalking()
}

else if(state == states.sprinting){
	StatePlayersprinting()
}

else if(state == states.jumping){
	StatePlayerJumping()
}



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



x=x+hsp; 


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
y=y+vsp; 
vsp=vsp+grv;

//projectile
shotTimer -=1/room_speed;
if (shotTimer < 0) and key_bullet=1
{
	shotTimer=3;
	var bullet = instance_create_layer(x,y,"Instances", oPlayerProjectile)
	with (bullet)
	{
		speed = 6
		direction =point_direction(x,y, mouse_x, mouse_y);
	}
}

if shotTimer>0
{
	timer=3
}
if timer!=-1
{
	timer--;
}


//room_transition
if(y>=room_height)
{
target=asset_get_index("R"+string(irandom_range(1,5)));
room_goto(target)
}


//parry
if (key_parry=1) 
{
	invic=true
}

if (key_melee=1)
{
instance_create_layer(x+move*100,y,"Instances", oMelee)
}


//potions
if(key_potion=1) and hp<3 and global.potion>0
{
	global.potion=global.potion-1
	hp=(hp+1)
	walksp=0
	potion_timer=-2/room_speed
}




//timer
if (invic = true)
{
	invTimer -= 1/room_speed
	if (invTimer <=0)
	{
		invic = false;
		invTimer = 1;
	}
}



