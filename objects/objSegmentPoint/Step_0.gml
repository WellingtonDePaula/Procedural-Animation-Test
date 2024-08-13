var velh = 0;
var velv = 0;

var distance = point_distance(x, y, fatherId.x, fatherId.y);
var distanceDifference = distance-lineDistance;

dir = point_direction(x, y, fatherId.x, fatherId.y);

if(distance > lineDistance) {
	velh = lengthdir_x(distanceDifference, dir);
	velv = lengthdir_y(distanceDifference, dir);
}

x+=velh;
y+=velv;

topPoint[0] = x + lengthdir_x(radius, dir-90);
topPoint[1] = y + lengthdir_y(radius, dir-90);


bottomPoint[0] = x + lengthdir_x(radius, dir+90);
bottomPoint[1] = y + lengthdir_y(radius, dir+90);

//topPoint[0] = x;
//topPoint[1] = y + radius + sin(90)-1.8;

//bottomPoint[0] = x;
//bottomPoint[1] = y - radius + sin(90);