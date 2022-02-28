/// @description Insert description here
// You can write your code in this editor
hsp =0;
vsp =0;
grv =0.15;
walksp = 4;
invic= false;
invTimer = 1;
hp=3;
jumpForce = -2;
global.potion=3;
shotTimer=0;
jump_number=2
jump_current=0
timer=-1
parry_timer=-1
knockback=0
knockback_distance=0
enum states {
	walking,
	sprinting,
	jumping,
}

state=states.walking