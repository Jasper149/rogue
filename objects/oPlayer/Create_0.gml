/// @description Insert description here
// You can write your code in this editor
hsp =0;
vsp =0;
grv =0.17;
walksp = 4;
invic= false;
invTimer = 1;
oPlayer.hp=3;
jumpForce = -2;
potion_timer=2
global.potion=3;
shotTimer=0;
jump_number=2
jump_current=0
timer=-1

td=ds_list_create(); //list that stores data
td_rewind=0; //how much to rewind
max_seconds=1; //Max time you can rewind
global.rewind=false //the activation
rewindtimer=2


knockback_distance=0
enum states {
	walking,
	sprinting,
	jumping,
	potion,
	idle,
}

state=states.idle

