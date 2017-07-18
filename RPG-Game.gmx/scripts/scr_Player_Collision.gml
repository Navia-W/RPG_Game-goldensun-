//Room collision
if x <  0
{
    x = 0;
}
else if (x + 32) > room_width
{
    x = (room_width - 32);
}

if y < 0 
{
    y = 0;
}
else if (y + 32) > room_height
{
    y = (room_height - 32);
}
