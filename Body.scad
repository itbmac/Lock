use <write.scad>

module body()
{
	scale = 5;
	fontSize = scale * 3;
	fontWidth = scale;
	levelScale = .35;
	width = .7;
	
	union()	{
	difference() {
		difference() {
			cube([scale*25,scale*10,scale*20], true);
			translate([0, 0,scale*0]) cube([scale*23,scale*8,scale*18], true);
			//cylinder(r = scale*levelScale, h = width*scale);
		}
		union()	{
			translate([-3*scale, 0,scale*9]) cylinder(r = scale*2+2, h = scale);
			//translate([-7*scale, 0,scale*9]) cylinder(r = scale*2+2, h = scale);
			translate([7*scale, 0,scale*9]) cylinder(r = scale+2, h = scale);
		}
	}
		union() {
			union()	{
				translate([-6*scale, 5*scale,scale*8]) rotate([90,0,0]) cylinder(r = scale*levelScale, h = 10*scale);
				translate([0*scale, 5*scale,scale*8]) rotate([90,0,0]) cylinder(r = scale*levelScale, h = 10*scale);
			}
		}
	}

			translate([scale*.2, scale*-5,scale*7]) rotate([90,0,0])
			{write("MacKenzie",t=fontWidth,h=fontSize,center=true, font = "orbitron.dxf");}

			translate([scale*.2, scale*-5,scale*3]) rotate([90,0,0])
			{write("and",t=fontWidth,h=fontSize,center=true, font = "orbitron.dxf");}

			translate([scale*.2, scale*-5,scale*-1]) rotate([90,0,0])
			{write("Abby",t=fontWidth,h=fontSize,center=true, font = "orbitron.dxf");}

			translate([scale*.2, scale*-5,scale*-6.5]) rotate([90,0,0])
			{write("11/26/11",t=fontWidth,h=fontSize,center=true, font = "orbitron.dxf");}		
}


module pin()
{
	scale = 5;
	n = 18;
	d = 180/n;
	ph = 20;
	iph = .85;
	
	translate([scale*2, 0,scale*20]) rotate([0,-90,270]) union() {
	//translate([scale*0, 0,scale*20]) rotate([0,-90,270]) union() {
		for (i = [1:n])
		{
			translate([sin(i*d) * 5 * scale, cos(i*d) * 5 * scale, 0])
			//translate([sin(i*d) * 5 * scale, cos(i*d) * 7 * scale, 0])
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


module lever()
{
	scale = 10;
	levelScale = .35;
	width = .7;
	
	rotate([90,0,0]) translate([scale*-3,scale*4, scale*-.25]) union() {
		difference() {
			cylinder(r = scale*levelScale*2, h = width*scale);
			cylinder(r = scale*levelScale, h = width*scale);
		}
		translate([width*scale*1.5,0,width*scale*.5])cube([width*scale*2,width*scale,width*scale], true);
	}

	rotate([90,0,0]) translate([scale*0,scale*4, scale*.25]) rotate([0,180,0]) union() {
		difference() {
			cylinder(r = scale*levelScale*2, h = width*scale);
			cylinder(r = scale*levelScale, h = width*scale);
		}
		translate([width*scale*1.5,0,width*scale*.5])cube([width*scale*2,width*scale,width*scale], true);
	}
}

lever();

pin();

body();
