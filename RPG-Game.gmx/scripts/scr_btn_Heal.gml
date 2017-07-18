if(mouse_x > bbox_left && mouse_x < bbox_right && mouse_y > bbox_top && mouse_y < bbox_bottom && mouse_check_button_pressed(mb_left))
{
    if (Player_battle_obj.stat_Player_Mana >= 40)
    {
    Player_battle_obj.stat_Player_Magic_Dmg = irandom_range(30, 40);
    Player_battle_obj.stat_Player_Health += (Player_battle_obj.stat_Player_Magic_Dmg + 15);
    show_message("Heal!!")
    Player_battle_obj.stat_Player_Mana -= 40;
    }
    else
    {
    show_message("I'm out of Mana!")
    }
    with (Fireball_btn && Heal_btn && TestSpell_btn && Battle_Item_Magic_Menu_obj)
    {
        instance_destroy();
    }
    scr_NPC_Attack();
}
