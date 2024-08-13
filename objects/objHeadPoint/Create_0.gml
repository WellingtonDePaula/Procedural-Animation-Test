vel = 2;
velh = 0;
velv = 0;
dir = 0;

topPoint = [0, 0];
bottomPoint = [0, 0];

topEyePoint = [0, 0];
bottomEyePoint = [0, 0];

bodyColor = #fc0fc0;

radius = 7;
maxBodyRadius = radius-1;
bodyRadius = maxBodyRadius;

headId = self;
nextToHead = -1;
tailId = -1;

bodyNumber = 15;
lineDistance = 6;

#region Create Child's
for(var i = 0; i < bodyNumber; i++) {
	var point = instance_create_layer(x+(lineDistance  * (i+1)), y, "Instances", objSegmentPoint);
	if(tailId != -1) {
		tailId.childId = point;
	}
	
	point.bodyColor = bodyColor;
	bodyRadius -= (maxBodyRadius/(bodyNumber+4));
	point.radius = bodyRadius
	show_debug_message(bodyRadius - (bodyRadius/bodyNumber));
	
	point.lineDistance = lineDistance;
	point.headId = headId;
	if(i == 0) {
		point.fatherId = headId;
		tailId = point;
		nextToHead = point;
	} else {
		point.fatherId = tailId;
		tailId = point;
	}
}
#endregion

nextToHead.depth = -1;
tailId.depth = 1;

tailId.drawTail = true;