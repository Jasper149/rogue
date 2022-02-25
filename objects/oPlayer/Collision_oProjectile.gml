/// @description Insert description here
// You can write your code in this editor



if (key_parry=1)
{
	var bullet = instance_create_layer(x,y,"Instances", oPlayerProjectile)
	with (bullet)
	{
		speed = 6
		direction =instance_nearest(x,y,oTurret)
	}
}
else
{
	PlayerHurt();
}


instance_destroy(other)