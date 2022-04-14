function PlayerHurt()
{
	
        
        if(!oPlayer.rewind)
        {
		oPlayer.invic=true;
        oPlayer.hp --;
        if(oPlayer.hp<1)
       {
        PlayerDeath();
        }
		}
}
function PlayerDeath()
{
room_goto(R1)
}
