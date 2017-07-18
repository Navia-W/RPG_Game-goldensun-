show_message('Enemy attacks');
Player_battle_obj.stat_Player_Health -= (NPC_battle_obj.stat_NPC_Dmg - Player_battle_obj.stat_Player_Defence);
show_message(NPC_battle_obj.stat_NPC_Dmg);
Player_battle_obj.stat_Player_Defence = 0;
NPC_battle_obj.stat_NPC_Dmg = 20;
Player_battle_obj.Player_Turn = true;
