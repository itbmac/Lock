module lever()
{
	scale = 10;
	levelScale = .35;
	width = .7;
	
	union() {
		difference() {
			cylinder(r = scale*levelScale*2, h = width*scale);
			cylinder(r = scale*levelScale, h = width*scale);
		}
		translate([width*scale*1.5,0,width*scale*.5])cube([width*scale*2,width*scale,width*scale], true);
	}
}

lever();

