#region Movement

var right, left, down, up, keys;

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));

keys = right - left != 0 || down - up != 0;
dir = point_direction(0, 0, right - left, down - up);

velh = lerp(velh, lengthdir_x(vel * keys, dir), .08);
velv = lerp(velv, lengthdir_y(vel * keys, dir), .08);

move_and_collide(velh, velv, -1);

#endregion

var dir2 = point_direction(nextToHead.x, nextToHead.y, x, y);

topEyePoint[0] = x + lengthdir_x(radius-1, dir2-55);
topEyePoint[1] = y + lengthdir_y(radius-1, dir2-55);

bottomEyePoint[0] = x + lengthdir_x(radius-1, dir2+55);
bottomEyePoint[1] = y + lengthdir_y(radius-1, dir2+55);





topPoint[0] = x + lengthdir_x(radius, dir2-90);
topPoint[1] = y + lengthdir_y(radius, dir2-90);

bottomPoint[0] = x + lengthdir_x(radius, dir2+90);
bottomPoint[1] = y + lengthdir_y(radius, dir2+90);

//topPoint[0] = x;
//topPoint[1] = y + radius + sin(90)-1.8;

//bottomPoint[0] = x;
//bottomPoint[1] = y - radius + sin(90);