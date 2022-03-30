function PlayerHurt()
{
	
         if(!global.rewind)
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
