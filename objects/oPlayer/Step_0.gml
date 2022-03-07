// @description Insert description here
// You can write your code in this editor
CheckInput()
CheckCollisionsx()
CheckCollisiony()
vsp=vsp+grv;

if(state==states.idle){
	StatePlayerIdel()
}
else if(state == states.walking){
	StatePlayerWalking()
}
else if(state == states.sprinting){
	StatePlayersprinting()
}

else if(state == states.jumping){
	StatePlayerJumping()
}

else if(state == states.potion){
	StatePlayerPotion()
}

if(key_potion)
{
	potion_active=1
}

y=y+vsp;
x=x+hsp

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



