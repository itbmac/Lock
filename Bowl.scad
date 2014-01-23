
module example003()
{
	/*
	difference() {
		union() {
			cylinder(r1 = 6, r2 = 4, h = 10);
		}
		union() {
			cylinder(r1 = 5.5, r2 = 3, h = 9);
		}
	}
	*/
	union() {
		difference() {
			union() {
				cylinder(r1 = 12, r2 = 10, h = 10);
			}
			union() {
				cylinder(r1 = 11, r2 = 10, h = 9);
			}
		}
		translate([0,-4.5])cube([ 23, 1, 9 ], center = true);
	}
}

example003();

