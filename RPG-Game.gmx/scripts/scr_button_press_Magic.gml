if(mouse_x > bbox_left && mouse_x < bbox_right && mouse_y > bbox_top && mouse_y < bbox_bottom)
{
    scr_button_Hover();
    if (mouse_check_button_pressed(mb_left))
    {
        instance_create(448,192,Battle_Item_Magic_Menu_obj);
        instance_create(0,192,Spell_Info_obj);
    }
}
