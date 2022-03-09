// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerJumping(){

CheckCollisionsx()
CheckCollisiony()
CheckInput()

if(place_meeting(x,y+1,oWall))
{
state=states.walking;
}
if (potion_active)
{
state=states.potion
}
}