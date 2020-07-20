include <lib.scad>;

$fn = 32;

kp = 19.2;

w = kp * 6.5;
h = kp * 5.5;
c = [w, h] / 2;

// SKETCHES

module CASE_OUTER() {
    r = kp / 4;
    hull() {
        translate([w, h]) rotate(0) {
            continuous_corner(r);
        }
        translate([0, h]) rotate(90) {
            continuous_corner(r);
        }
        translate([0, 0]) rotate(180) {
            continuous_corner(r);
        }
        translate([w, 0]) rotate(270) {
            continuous_corner(r);
        }
    }
}

module UPPER_CASE_CUTOUT() {
    translate(c) smooth(1) fillet(1) difference() {
        square(kp*[6, 4], center=true);
        translate([-3, -2]*kp) square(kp*[1, 1]);
        translate([0, -2]*kp) square(kp*[1, 1]);
    }
}

module PLATE_RECESS() {
    translate(c) fillet(1) {
        smooth(3) square(kp*[6, 4]+[4, 4], center=true);
        translate([1.25*kp, 0]) smooth(2.5) square([1.5, 4]*kp+[2, 12], center=true);
        translate([-1.25*kp, 0]) smooth(2.5) square([1.5, 4]*kp+[2, 12], center=true);
    }
}

module SCREW_HOLE() {
    translate(c) {
        for (i = [-1:1]) {
            translate([kp*2.5*i, 0]) {
                translate([0, h/2-(h-kp*4-4)/4]) circle(d=3.5);
                translate([0, -h/2+(h-kp*4-4)/4]) circle(d=3.5);
            }
        }
    }
}

module PLATE() {
    key_positions = [for (i=[-2.5:2.5], j=[-1.5:1.5]) [i, j]*kp];
    translate(c) difference() {
        fillet(1) {
            smooth(2) square(kp*[6, 4]+[2, 2], center=true);
            translate([1.25*kp, 0]) smooth(1.5) square([1.5, 4]*kp+[0, 10], center=true);
            translate([-1.25*kp, 0]) smooth(1.5) square([1.5, 4]*kp+[0, 10], center=true);
        }
        for (key_position = key_positions) {
            translate(key_position) square([14, 14], center=true);
        }
    }
}

module upper_case() {
    render(4) difference() {
        linear_extrude(20) CASE_OUTER();
        linear_extrude(20) UPPER_CASE_CUTOUT();
        linear_extrude(20 - 6.6) PLATE_RECESS();
        linear_extrude(15) SCREW_HOLE();
    }
}

upper_case();
translate([0, 0, 20 - 6.6 - 1.5 - 1]) linear_extrude(1.5) PLATE();
