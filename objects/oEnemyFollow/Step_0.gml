/// @description Insert description here
// You can write your code in this editor
if (invic)
{
	invTimer-= 1/room_speed;
	if(invTimer <0)
{
	invTimer=0.5
	invic=false;
}
}

xDirection = sign(oPlayer.x-x)
hsp=walksp*xDirection

if (abs(oPlayer.x-x) <500)
   { 
	x=x+hsp
   }
   
 