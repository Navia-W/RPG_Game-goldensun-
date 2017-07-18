randomize();
// Movement
if (keyboard_check(vk_right))
{
    x += PlayerStep;
    EncounterCurrent ++;
}
else if (keyboard_check(vk_down))
{
    y += PlayerStep;
    EncounterCurrent ++;
}
else if (keyboard_check(vk_left))
{
    x -= PlayerStep;
    EncounterCurrent ++;
}
else if (keyboard_check(vk_up))
{
    y -= PlayerStep;
    EncounterCurrent ++;
}

if (keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right))
{
    if (EncounterCurrent >= 20)
    {
        RandomNumber = irandom_range(0, 19);
        if (RandomNumber == 18 || EncounterCurrent >= 80)
        {
            //Insert encounter script here
            //Example: scr_Encounter();
            room_goto(room1);
            EncounterCurrent = 0;
            RandomNumber = 0;
        }
    }
}
