
module pin()
{
	scale = 5;
	n = 100;
	d = 180/n;
	ph = 20;
	iph = .85;
	
	union() {
		for (i = [1:n])
		{
			translate([sin(i*d) * 5 * scale, cos(i*d) * 5 * scale, 0])
			{
				sphere(scale);
			}
		}
		rotate([0,270,0]) {
			translate([0,5*scale,0]) {
				sphere(scale);
				cylinder(r = scale, h = ph*scale);
			}
			translate([0,5*scale,(ph-.5)*scale]) {
				cube([scale*3,5*scale,3*scale], true);
			}

			translate([0,-5*scale,0]) {
				sphere(scale);
				cylinder(r = scale, h = (ph*iph)*scale);
			}
			translate([0,-5*scale,((ph * iph) -.5)*scale]) {
				cube([scale*2,4*scale,3*scale], true);
			}
		}
	}
}

pin();

