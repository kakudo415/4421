include <lib.scad>;

$fn = 64;

module upper_body() {
    r = 19.2/6;
    lb = [for (t = [0:1:100]) cubic_bezier(t/100, [r, 0], [0, 0], [0, 0], [0, r])];
    lt = [for (t = [0:1:100]) cubic_bezier(t/100, [0, 19.2*4.5-r], [0, 19.2*4.5], [0, 19.2*4.5], [r, 19.2*4.5])];
    rt = [for (t = [0:1:100]) cubic_bezier(t/100, [19.2*(6+2/6)-r, 19.2*4.5], [19.2*(6+2/6), 19.2*4.5], [19.2*(6+2/6), 19.2*4.5], [19.2*(6+2/6), 19.2*4.5-r])];
    rb = [for (t = [0:1:100]) cubic_bezier(t/100, [19.2*(6+2/6), r], [19.2*(6+2/6), 0], [19.2*(6+2/6), 0], [19.2*(6+2/6)-r, 0])];
    linear_extrude(20) {
        polygon(concat(lb, lt, rt, rb));
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
