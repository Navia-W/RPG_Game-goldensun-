draw_set_font(triforce_magicMenu);
draw_set_color(c_white);
draw_set_alpha(255);

draw_sprite(sprite_index, 0, x, y);

draw_text(480, 224, 'Firebolt Element:Fire Mana: 20');
draw_text(480, 256, 'Lightingbolt Element:Thunder Mana: 25');
draw_text(480, 288, 'Waterbolt Element:Water Mana: 15');
draw_text(480, 320, 'StoneSpike Element:Earth Mana: 20');
draw_text(480, 512, 'Back');

//mouse input
//firebolt
if (mouse_x > 480 && mouse_x < bbox_right && mouse_y > 223 && mouse_y < 256)
    {
        draw_text(32, 224, 'A powerfull fireball
Dealing more damage to
nature creatures.');
if (mouse_check_button_pressed(mb_left))
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
            with (Spell_Info_obj)
            {
                instance_destroy();
            }
            show_message("Firebolt!!")
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
}
//Lightning Bolt
if (mouse_x > 480 && mouse_x < bbox_right && mouse_y > 255 && mouse_y < 288)
    {
        draw_text(32, 224, 'A shocking experience
        for the creature being hit.');
if (mouse_check_button_pressed(mb_left))
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
            with (Spell_Info_obj)
            {
                instance_destroy();
            }
            show_message("LightingBolt!!")
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
}
//Waterbolt
if (mouse_x > 480 && mouse_x < bbox_right && mouse_y > 287 && mouse_y < 320)
    {
        draw_text(32, 224, 'Waterbolt, a watery
        ball that is kinda wet. Ask fire
        creatures, they dislike it.');
if (mouse_check_button_pressed(mb_left))
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
            with (Spell_Info_obj)
            {
                instance_destroy();
            }
            show_message("Waterball!!")
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
}
//Stonespike
if (mouse_x > 480 && mouse_x < bbox_right && mouse_y > 319 && mouse_y < 352)
    {
        draw_text(32, 224, 'Stonespike, it stings.');
if (mouse_check_button_pressed(mb_left))
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
            with (Spell_Info_obj)
            {
                instance_destroy();
            }
            show_message("Stonespike!!")
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
}
//Back button
if (mouse_x > 480 && mouse_x < bbox_right && mouse_y > 511 && mouse_y < 544 && mouse_check_button_pressed(mb_left))
{
    with (Battle_Item_Magic_Menu_obj)
    {
    instance_destroy();
    }
    with (Spell_Info_obj)
    {
    instance_destroy();
    }
}

