if (instance_exists(pointer_obj))
{
if (keyboard_check_released(vk_right))
{
    pointerX += 96
    if (pointerX >= 576 &&(keyboard_check_released(vk_right)))
    {
        pointerX = 576;
    }
}
if (keyboard_check_released(vk_left))
{
    pointerX -= 96
    if (pointerX <= 96 &&(keyboard_check_released(vk_left)))
    {
        pointerX = 96;
    }
}

if (pointerX == 96 && keyboard_check(ord('Z')))
{
scr_button_pointer_Attack();
instance_deactivate_object(pointer_obj);
}
else if (pointerX == 192 && keyboard_check(ord('Z')))
{
instance_deactivate_object(pointer_obj);
if (keyboard_check_released(ord('Z')))
{
scr_button_pointer_Magic();
}
}
else if (pointerX == 288 && keyboard_check(ord('Z')))
{

}
else if (pointerX == 384 && keyboard_check(ord('Z')))
{

}
else if (pointerX == 480 && keyboard_check(ord('Z')))
{

}
else if (pointerX == 576 && keyboard_check(ord('Z')))
{

}
}


/*switch buttons
{
    case pointerX == 96 && keyboard_check(ord('Z')):
    //attack
    scr_button_pointer_Attack();
    break;
    
    case pointerX == 192 && keyboard_check(ord('Z')):
    //magic
    scr_button_pointer_Magic();
    break;
    
    case pointerX == 288 && keyboard_check(ord('Z')):
    //pet
    break;
    
    case pointerX == 384 && keyboard_check(ord('Z')):
    //summon
    break;
    
    case pointerX == 480 && keyboard_check(ord('Z')):
    //item
    break;
    
    case pointerX == 576 && keyboard_check(ord('Z')):
    //defend
    break;
}*/
