if (keyboard_check_released(vk_up))
{
    magicpointer_obj.MpointerY -= 32;
    if (magicpointer_obj.MpointerY <= 224)
    {
        magicpointer_obj.MpointerY = 224;
    }
}
if (keyboard_check_released(vk_down))
{
    magicpointer_obj.MpointerY += 32;
    if (magicpointer_obj.MpointerY >= 512)
    {
        magicpointer_obj.MpointerY = 512;
    }
}

if(instance_exists(magicpointer_obj))
{
//fireball
if (magicpointer_obj.MpointerY > 223 && magicpointer_obj.MpointerY < 256)
{
    draw_text(32, 224, 'A powerfull fireball
Dealing more damage to
nature creatures.');
if (keyboard_check(ord('Z')))
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
            with (Spell_Info_obj)
            {
            instance_destroy();
            }
            instance_deactivate_object(magicpointer_obj);
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
            instance_deactivate_object(magicpointer_obj);
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
}
if(instance_exists(magicpointer_obj))
{
//lightningbolt
if (magicpointer_obj.MpointerY > 255 && magicpointer_obj.MpointerY < 288)
{
    draw_text(32, 224, 'A shocking experience
        for the creature being hit.');
if (keyboard_check(ord('Z')))
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
            with (Spell_Info_obj)
            {
            instance_destroy();
            }
            instance_deactivate_object(magicpointer_obj);
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
            instance_deactivate_object(magicpointer_obj);
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
}
if(instance_exists(magicpointer_obj))
{
//waterbolt
if (magicpointer_obj.MpointerY > 287 && magicpointer_obj.MpointerY < 320)
{
        draw_text(32, 224, 'Waterbolt, a watery
        ball that is kinda wet. Ask fire
        creatures, they dislike it.');
if (keyboard_check(ord('Z')))
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
            with (Spell_Info_obj)
            {
            instance_destroy();
            }
            instance_deactivate_object(magicpointer_obj);
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
            instance_deactivate_object(magicpointer_obj);
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
}
if(instance_exists(magicpointer_obj))
{
//stoneSpike
if(magicpointer_obj.MpointerY > 319 && magicpointer_obj.MpointerY < 352)
{
        draw_text(32, 224, 'Stonespike, it stings.');
if (keyboard_check(ord('Z')))
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
            with (Spell_Info_obj)
            {
            instance_destroy();
            }
            instance_deactivate_object(magicpointer_obj);
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
            instance_deactivate_object(magicpointer_obj);
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
}
if(instance_exists(magicpointer_obj))
{
//backButton
if(magicpointer_obj.MpointerY > 512 && magicpointer_obj.MpointerY < 544  && keyboard_check(ord('Z')))
{
    with (Battle_Item_Magic_Menu_obj)
    {
    instance_destroy();
    }
    with (Spell_Info_obj)
    {
    instance_destroy();
    }
    instance_deactivate_object(magicpointer_obj);
}

}
