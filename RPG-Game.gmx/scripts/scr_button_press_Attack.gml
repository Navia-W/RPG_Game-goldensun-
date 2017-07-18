if(mouse_x > bbox_left && mouse_x < bbox_right && mouse_y > bbox_top && mouse_y < bbox_bottom)
{
    scr_button_Hover();
    if (mouse_check_button_pressed(mb_left))
    {
    Player_battle_obj.stat_Player_Dmg = irandom_range(25, 50);
    Player_battle_obj.stat_Player_Crit = irandom_range(40, 60);
    Player_battle_obj.Player_CritChance = irandom_range(0,14);
    if (Player_battle_obj.Player_CritChance == 10)
    {
        Player_battle_obj.Player_Damage += Player_battle_obj.stat_Player_Crit;
        NPC_battle_obj.stat_NPC_Health -= Player_battle_obj.Player_Damage;
        //instance_create(0,512,TextBox_obj);
        show_message('Critical hit!');
    }
    else 
    {
        Player_battle_obj.Player_Damage += Player_battle_obj.stat_Player_Dmg;
        NPC_battle_obj.stat_NPC_Health -= Player_battle_obj.Player_Damage;
        //instance_create(0,512,TextBox_obj);
        show_message("That's a hit!")
    }
    scr_NPC_Attack();
}
}
