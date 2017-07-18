draw_set_font(triforce_magicMenu);
draw_set_color(c_white);
draw_set_alpha(255);

draw_text(720, 0, 'Player');
draw_text(712, 24, "HP: " + string(stat_Player_Health));
draw_text(712, 48, "MP: " + string(stat_Player_Mana));
