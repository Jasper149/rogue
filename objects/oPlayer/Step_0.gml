// @description Insert description here
// You can write your code in this editor
key_left=keyboard_check(ord("A"));
key_right=keyboard_check(ord("D"));
key_jump=keyboard_check_pressed(ord("W"));
key_sprint=keyboard_check(vk_shift)
key_potion=keyboard_check_pressed(ord("Q"))
key_bullet=keyboard_check(ord("E"))
key_lookup=keyboard_check(vk_control)




//potions
if(key_potion=1) and hp<3 and global.potion>0
{
	global.potion=global.potion-1
	hp=(hp+1)
}

//sprinting
if (key_sprint=1)
{
	walksp=8;

}
else
{
	walksp=4;
	
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

//direction
move = key_right-key_left;

hsp=move*walksp

vsp=vsp+grv;

if (key_jump) and jump_current>0
{
vsp=-8;
jump_current--;
}


//horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
	x=x+sign(hsp);
	}
	hsp=0;
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