include <lib.scad>;

$fn = 64;

// UPPER CASE

module upper_body() {
    r = 19.2 / 4;
    linear_extrude(20) hull() {
        translate([19.2*6.5, 19.2*5]) rotate(0) {
            continuous_corner(r);
        }
        translate([0, 19.2*5]) rotate(90) {
            continuous_corner(r);
        }
        translate([0, 0]) rotate(180) {
            continuous_corner(r);
        }
        translate([19.2*6.5, 0]) rotate(270) {
            continuous_corner(r);
        }
    }
}

module key_cutout() {
    linear_extrude(40) {
        smooth(1) fillet(1) {
            translate([0, 19.2]) {
                square([19.2 * 6, 19.2 * 3]);
            }
            translate([19.2, 0]) {
                square([19.2 * 2, 19.2]);
            }
            translate([19.2 * 4, 0]) {
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
        translate([19.2 / 4, 19.2 / 2]) {
            key_cutout();
        }
        translate([19.2 / 4, 19.2 / 2] - [2, 2]) {
            linear_extrude(20 - 6.6 - 1 + 1) smooth(3) fillet(3) square([19.2 * 6, 19.2 * 4] + [2, 2] + [2, 2]);
        }
        translate([1, 2] * 19.2 / 4 - [2, 2]) {
            linear_extrude(20 - 6.6 - 1 + 1) {
                smooth(2) fillet(1) {
                    translate([19.2 * 1 + 1, -4]) {
                        square([19.2 * 1.5, 19.2 * 4 + 2 + 8] + [2, 2]);
                    }
                    translate([19.2 * 3.5 + 1, -4]) {
                        square([19.2 * 1.5, 19.2 * 4 + 2 + 8] + [2, 2]);
                    }
                    translate([19.2 / 2 + 1, 0]) {
                        square([19.2 * 5, 19.2 * 4 + 4]);
                    }
                }
            }
        }
    }
}

// PLATE

module plate() {
    key_positions = [for (i = [0:5], j = [0:3]) [i, j] * 19.2];

    translate([1, 2] * 19.2 / 4 - [1, 1]) {
        difference() {
            smooth(1.5) fillet(1.5) union() {
                square([6, 4] * 19.2 + [2, 2]);
                translate([19.2 * 1 + 1, -4]) {
                    square([19.2 * 1.5, 19.2 * 4 + 2 + 8]);
                }
                translate([19.2 * 3.5 + 1, -4]) {
                    square([19.2 * 1.5, 19.2 * 4 + 2 + 8]);
                }
            }
            translate([1, 1] * (19.2 - 14) / 2 + [1, 1]) {
                for (key_position = key_positions) {
                    translate(key_position) square([14, 14]);
                }
            }
        }
    }
}

// LOWER CASE

module lower_case() {}

// MAIN

color("Burlywood") upper_case();

color("silver") translate([0, 0, 20 - 6.6 - 1.5 - 1]) linear_extrude(1.5) plate();

lower_case();
