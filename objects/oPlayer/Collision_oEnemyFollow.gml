/// @description Insert description here
// You can write your code in this editor
	knockback_distance=walksp*60
	PlayerHurt();
	if(y<=other.y - other.sprite_height*0.9)

{
	vsp = jumpForce*2
	PlayerHurt();
}
if (place_meeting(x+knockback_distance,y,oWall))
{
while(!place_meeting(x+knockback_distance,y,oWall))
{
	knockback=0
}
 knockback=1
}
 
 if(place_meeting(x-sign(walksp),y,oEnemyFollow))and(knockback=0)
x+=knockback_distance
if(place_meeting(x+sign(walksp),y,oEnemyFollow))and(knockback=0)
	x-=knockback_distance




