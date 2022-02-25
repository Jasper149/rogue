/// @description Insert description here
// You can write your code in this editor
EnemyHurt1()

hit_timer-=1/room_speed

if (hit_timer=1)
{
	instance_destroy(self)
}