// @description Insert description here
// You can write your code in this editor

CheckCollisionsx()
CheckCollisiony()
vsp=vsp+grv;

if(state == states.idle){
	StatePlayerIdle()
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
room_transition=true
target=asset_get_index("R"+string(irandom_range(1,5)));
room_goto(target)
}

if(x>=room_width)
{
room_transition=true
target=asset_get_index("R"+string(irandom_range(1,5)));
room_goto(target)
}


potion_timer-=1/room_speed
if (key_potion) and oPlayer.hp<3 and (global.potion>0)
{
	oPlayer.hp=oPlayer.hp+1
	walksp=1.5
	global.potion--;
	potion_timer= 3
}

if(potion_timer=1)
{
	walksp=4
}



//rewind

if (!rewind)
{
ds_list_add(td, [x,y]) // x position storage
}

if (ds_list_size(td) >60*max_seconds) {
ds_list_delete(td,0)
}


var size=ds_list_size(td)

if (rewind && size+td_rewind >0){
td_rewind--;
rewindtimer=0.5


var arr = td[| size + td_rewind];
   x = arr[0];
   y = arr[1];
}
else if (!rewind)
td_rewind=0;



if (rewind = true)
{
	rewindtimer -= 1/room_speed
	if (rewindtimer <=0)
	{
		rewind = false;
		rewindtimer = 1;
	}
}
