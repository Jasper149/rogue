function PlayerHurt()
{
	
         if(!oPlayer.invic)
        {
        oPlayer.invic=true;
        alarm_set(0,2*room_speed);
        oPlayer.hp --;
        if(oPlayer.hp<1)
       {
        PlayerDeath();
        }
    }
}
function PlayerDeath()
{
room_restart();
}
