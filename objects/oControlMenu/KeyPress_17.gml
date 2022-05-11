/// @description Insert description here
// You can write your code in this editor
if(gameispaused ==false)
 {
	instance_deactivate_all(true);   
	gameispaused = true;
 }
 else
{	
	instance_activate_all();
	gameispaused=false;

	
}	