//Fireball
if(mouse_x >= 0  && mouse_x <= 192 && mouse_y >= 160 && mouse_y <= 192 && mouse_check_button_pressed(mb_left))
{
    if (Player_battle_obj.stat_Player_Mana >= 20)
    {
        Player_battle_obj.stat_Player_Magic_Dmg = irandom_range(30, 40);
        Player_battle_obj.stat_Player_Magic_Crit = irandom_range(40, 55);
        Player_battle_obj.Player_CritChance = irandom_range(0,14);
        if (Player_battle_obj.Player_CritChance == 10)
        {
            Player_battle_obj.Player_Damage += Player_battle_obj.stat_Player_Magic_Crit;
            NPC_battle_obj.stat_NPC_Health -= Player_battle_obj.Player_Damage;
            show_message('Critical hit!');
        }
        else 
        {
            Player_battle_obj.Player_Damage += Player_battle_obj.stat_Player_Magic_Dmg;
            NPC_battle_obj.stat_NPC_Health -= Player_battle_obj.Player_Damage;
            show_message("Fireball!!")
        }
    }
    else
    {
        show_message("I'm out of Mana!")
    }
    Player_battle_obj.stat_Player_Mana -= 20;
    with (Battle_Item_Magic_Menu_obj)
    {
    instance_destroy();
    }
    scr_NPC_Attack();
}
//Heal
if(mouse_x >= 0  && mouse_x <= 192 && mouse_y >= 224 && mouse_y <= 256 && mouse_check_button_pressed(mb_left))
{
    Player_battle_obj.stat_Player_Magic_Dmg = irandom_range(30, 40);
    if (Player_battle_obj.stat_Player_Mana >= 40)
    {
            Player_battle_obj.stat_Player_Health += (Player_battle_obj.stat_Player_Magic_Dmg + 15);
            show_message("Heal!!")
    }
    else
    {
        show_message("I'm out of Mana!")
    }
    Player_battle_obj.stat_Player_Mana -= 40;
    with (Battle_Item_Magic_Menu_obj)
    {
    instance_destroy();
    }
    scr_NPC_Attack();
}
//TestSpell
if(mouse_x >= 0  && mouse_x <= 192 && mouse_y >= 480 && mouse_y <= 512 && mouse_check_button_pressed(mb_left))
{
    NPC_battle_obj.stat_NPC_Health -= NPC_battle_obj.stat_NPC_Health;
    with (Battle_Item_Magic_Menu_obj)
    {
    instance_destroy();
    }
}
