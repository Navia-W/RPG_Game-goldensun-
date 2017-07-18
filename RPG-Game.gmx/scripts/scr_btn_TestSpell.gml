//This testspell is for combat testing only
//Testing death animations, or on death triggers.
if(mouse_x > bbox_left && mouse_x < bbox_right && mouse_y > bbox_top && mouse_y < bbox_bottom && mouse_check_button_pressed(mb_left))
{
    NPC_battle_obj.stat_NPC_Health -= NPC_battle_obj.stat_NPC_Health;
}
