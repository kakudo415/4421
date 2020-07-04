$fn = 64;

module smooth(r) {
    offset(r) offset(-r) {
        children();
    }
}

module fillet(r) {
    offset(-r) offset(r) {
        children();
    }
}

module upper_body() {
    cube([19.2 * (6 + 1/3), 19.2 * 5.25, 20]);
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
                    square([19.2 * (6 + 1/6), 19.2 * (5 + 1/12)]);
                }
            }
        }
    }
}

translate([0, 0, 0]) {
    upper_case();
}
