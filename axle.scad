holenum = 2;
diameter = 5;

difference() {
	cube([15, 15 + 15 * holenum, 15]);
	translate([0, 15, 2]) cube([15, 15 * holenum, 15]);
	translate([0, 7.5, 7.5]) rotate([30, 0, 0]) rotate([0, 90, 0]) cylinder(h = 15, d = diameter, $fn = 6);
	for(i = [0 : holenum]) {
		translate([7.5, 22.5 + 15 * i]) cylinder(h = 15, d = 4, $fn = 12);
	}
}
