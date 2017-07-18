if(mouse_x > bbox_left && mouse_x < bbox_right && mouse_y > bbox_top && mouse_y < bbox_bottom)
{
    scr_button_Hover();
    if (mouse_check_button_pressed(mb_left))
    {
        Player_battle_obj.stat_Player_Defence = irandom_range(1, 15);
        NPC_battle_obj.stat_NPC_Dmg -= Player_battle_obj.stat_Player_Defence;
        show_message("Player Defend")
        scr_NPC_Attack();
    }
}
