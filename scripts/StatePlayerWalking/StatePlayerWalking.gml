// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerWalking(){

CheckCollisionsx()
CheckCollisiony()

}
function StatePlayersprinting(){
	
	CheckCollisionsx()
	CheckCollisiony()
	
}
if (place_meeting(x,y+1,oWall) and (key_jump) and (jump_current>0))
{
state=states.jumping
}
if (hsp=8)
{
state=states.sprinting
}
if (potion_active)
{
state=states.potion
}


