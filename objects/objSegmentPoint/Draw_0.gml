#region Draw Player
draw_set_color(bodyColor); 
//Desenha circulos interiores
//draw_circle(x, y, radius, false);

#region Draw Player Fill
#region Draw Tail Outline
if(depth >= 1) {
	draw_set_color(c_white);
	draw_circle(x, y, radius, true);
	draw_set_color(-1);
}
#endregion

draw_set_color(bodyColor); 
//Utiliza-se triangulos para preencher o corpo
draw_triangle(topPoint[0], topPoint[1], fatherId.topPoint[0], fatherId.topPoint[1], x, y, false);
draw_triangle(bottomPoint[0], bottomPoint[1], fatherId.bottomPoint[0], fatherId.bottomPoint[1], x, y, false);
draw_triangle(topPoint[0], topPoint[1], bottomPoint[0], bottomPoint[1], childId.x, childId.y, false);

//Desenha um círculo se for o último corpo do player
if(drawTail) {
	draw_circle(x, y, radius, false);
}
#endregion

#region Draw Body Outline

draw_set_color(c_white);
//Desenha um linha sobre todo o player
draw_line(topPoint[0], topPoint[1], fatherId.topPoint[0], fatherId.topPoint[1]);

//Desenha uma linha sob todo o corpo
draw_line(bottomPoint[0], bottomPoint[1], fatherId.bottomPoint[0], fatherId.bottomPoint[1]);
draw_set_color(-1);

#endregion

draw_set_color(-1);
#endregion

#region Debug Draw
#region Draw Body Lines
draw_set_color(c_green);

//Desenha uma linha central que percorre todo o meio do player
//draw_line(fatherId.x, fatherId.y, x, y);

//Desenha um linha sobre todo o player
//draw_line(topPoint[0], topPoint[1], fatherId.topPoint[0], fatherId.topPoint[1]);

//Desnha uma linha sob todo o corpo
//draw_line(bottomPoint[0], bottomPoint[1], fatherId.bottomPoint[0], fatherId.bottomPoint[1]);

draw_set_color(-1);

#endregion

#region Draw Body Points
draw_set_color(c_yellow);

//Desenha um circulo no meio do corpo
//draw_circle(x, y, .5, false);

//Desenha um círculo no topo do corpo
//draw_circle(topPoint[0], topPoint[1], .5, false);

//Desenha um círculo na barte de baixo do corpo
//draw_circle(bottomPoint[0], bottomPoint[1], .5, false);

draw_set_color(-1);
#endregion
#endregion