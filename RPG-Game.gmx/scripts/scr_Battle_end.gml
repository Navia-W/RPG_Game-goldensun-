if (NPC_battle_obj.stat_NPC_Health <= 0)
{
    show_message('Battle End');
    room_goto(room0);
}
if (Player_battle_obj.stat_Player_Health <= 0)
{
    show_message('You died :(');
    room_goto(room0);
}
