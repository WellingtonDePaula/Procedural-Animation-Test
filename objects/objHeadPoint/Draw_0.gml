#region Draw Player

#region Draw Body
draw_set_color(bodyColor);

draw_circle(x, y, radius, false);

draw_set_color(-1);

draw_set_color(c_white);

draw_circle(x, y, radius, true);

draw_set_color(-1);

#endregion

#region Draw Eyes
//Desenha o olho do topo
draw_circle(topEyePoint[0], topEyePoint[1], 1, false);

//Desenha o olho de baixo
draw_circle(bottomEyePoint[0], bottomEyePoint[1], 1, false);
#endregion

#endregion

#region Debug Draw
draw_set_color(c_yellow);

//Desenha um círculo no topo do corpo
//draw_circle(topPoint[0], topPoint[1], .5, false);

//Desenha um círculo na barte de baixo do corpo
//draw_circle(bottomPoint[0], bottomPoint[1], .5, false);

draw_set_color(-1);
#endregion