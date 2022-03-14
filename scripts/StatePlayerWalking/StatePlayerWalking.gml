// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerWalking(){

CheckCollisionsx()
CheckCollisiony()
CheckInput()



if (place_meeting(x,y+1,oWall))
{
state=states.jumping
}
if (hsp=8)
{
state=states.sprinting
}
if (key_potion)
{
state=states.potion
}
}

function StatePlayersprinting(){
	
	CheckCollisionsx()
	CheckCollisiony()
	CheckInput()



if (place_meeting(x,y+1,oWall))
{
state=states.jumping
}
if (hsp=8)
{
state=states.sprinting
}
if (key_potion)
{
state=states.potion
}
}

