include <lib.scad>;

$fn = 64;

module upper_body() {
    r = 19.2 / 6;
    linear_extrude(20) hull() {
        translate([19.2*(6+2/6), 19.2*4.5]) rotate(0) {
            continuous_corner(r);
        }
        translate([0, 19.2*4.5]) rotate(90) {
            continuous_corner(r);
        }
        translate([0, 0]) rotate(180) {
            continuous_corner(r);
        }
        translate([19.2*(6+2/6), 0]) rotate(270) {
            continuous_corner(r);
        }
    }
}

module key_cutout() {
    linear_extrude(40) {
        smooth(19.2 / 16) fillet(19.2 / 16) {
            translate([0, 19.2, 0]) {
                square([19.2 * 6, 19.2 * 3]);
            }
            translate([19.2, 0, 0]) {
                square([19.2 * 2, 19.2]);
            }
            translate([19.2 * 4, 0, 0]) {
                square([19.2 * 2, 19.2]);
            }
        }
    }
}

module upper_case() {
    render(convexity = 10) difference() {
        translate([0, 0, 0]) {
            upper_body();
        }
        translate([19.2 * 1/6, 19.2 * 0.25, -10]) {
            key_cutout();
        }
        translate([19.2 * 1/12, 19.2 * 1/12, -10]) {
            linear_extrude(20 - 6.6 + 10) {
                smooth(5) {
                    square([19.2 * (6 + 1/6), 19.2 * (4 + 2/6)]);
                }
            }
        }
    }
}

translate([0, 0, 0]) {
    upper_case();
}
