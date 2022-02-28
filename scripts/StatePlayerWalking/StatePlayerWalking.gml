// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerWalking(){

CheckCollisionsx()
CheckCollisiony()


move = key_right-key_left;

hsp=move*walksp
}

function StatePlayersprinting(){
	
	CheckCollisionsx()
	CheckCollisiony()
	
	hsp_sprint=hsp*2

if (key_sprint=1)
{
hsp=hsp_sprint

}
else
{
	hsp=hsp
	
}
if (key_jump) and jump_current>0
state=states.jumping
}

