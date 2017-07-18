draw_set_font(triforce_magicMenu);
draw_set_color(c_white);
draw_set_alpha(255);

draw_sprite(sprite_index, 0, x, y);

draw_text(480, 224, 'Fireball Element:Fire Mana: 20');
draw_text(480, 256, 'Lightingbolt Element:Thunder Mana: 25');
draw_text(480, 288, 'Waterbolt Element:Water Mana: 15');
draw_text(480, 320, 'StoneSpike Element:Earth Mana: 20');
draw_text(480, 512, 'Back');
    
if (mouse_x > 480 && mouse_x < bbox_right && mouse_y > 223 && mouse_y < 256 && mouse_check_button_pressed(mb_left))
    {
        draw_text(32, 224, 'A powerfull fireball
                            Dealing more damage to
                            nature creatures.');
        if (Player_battle_obj.stat_Player_Mana >= 20)
    {
        Player_battle_obj.stat_Player_Magic_Dmg = irandom_range(30, 40);
        Player_battle_obj.stat_Player_Magic_Crit = irandom_range(40, 55);
        Player_battle_obj.Player_CritChance = irandom_range(0,14);
        if (Player_battle_obj.Player_CritChance == 10)
        {
            Player_battle_obj.Player_Damage += Player_battle_obj.stat_Player_Magic_Crit;
            NPC_battle_obj.stat_NPC_Health -= Player_battle_obj.Player_Damage;
            with (Battle_Item_Magic_Menu_obj)
            {
                instance_destroy();
            }
            show_message('Critical hit!');
        }
        else 
        {
            Player_battle_obj.Player_Damage += Player_battle_obj.stat_Player_Magic_Dmg;
            NPC_battle_obj.stat_NPC_Health -= Player_battle_obj.Player_Damage;
            with (Battle_Item_Magic_Menu_obj)
            {
                instance_destroy();
            }
            show_message("Fireball!!")
        }
    }
    else
    {
        show_message("I'm out of Mana!")
    }
    Player_battle_obj.stat_Player_Mana -= 20;
    Player_battle_obj.Player_Turn = false;
    if (Player_battle_obj.Player_Turn = false)
    {
    scr_NPC_Attack();
    }
}
//Back button
if (mouse_x > 480 && mouse_x < bbox_right && mouse_y > 511 && mouse_y < 544 && mouse_check_button_pressed(mb_left))
{
    with (Battle_Item_Magic_Menu_obj)
    {
    instance_destroy();
    }
}

