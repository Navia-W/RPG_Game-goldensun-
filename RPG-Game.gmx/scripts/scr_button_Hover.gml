draw_set_font(triforce_buttonText_);
draw_set_color(c_white);
draw_set_alpha(255);

draw_sprite(sprite_index, 0, x, y);

//keyboard input
if(instance_exists(pointer_obj))
{
if (pointer_obj.pointerX == 96)
{
draw_text(704,608,'Attack');
}
else if (pointer_obj.pointerX == 192)
{
draw_text(704,608,'Magic');
}
else if (pointer_obj.pointerX == 288)
{
draw_text(704,608,'Pet');
}
else if (pointer_obj.pointerX == 384)
{
draw_text(704,608,'Summons');
}
else if (pointer_obj.pointerX == 480)
{
draw_text(704,608,'Items');
}
else if (pointer_obj.pointerX == 576)
{
draw_text(704,608,'Defend');
}
}

//mouse input
if(mouse_x > bbox_left && mouse_x < bbox_right && mouse_y > bbox_top && mouse_y < bbox_bottom)
{
    switch object_index
    {
        case (Attack_btn_obj):
        draw_text(704,608,'Attack');
        break;
        
        case (Magic_btn_obj):
        draw_text(704,608,'Magic');
        break;
        
        case (Pet_btn_obj):
        draw_text(704,608,'Pets');
        break;
        
        case (Defend_btn_obj):
        draw_text(704,608,'Defend');
        break;
        
        case (Item_btn_obj):
        draw_text(704,608,'Items');
        break;
        
        case (Summon_btn_obj):
        draw_text(704,608,'Summons');
        break;
    }
}
