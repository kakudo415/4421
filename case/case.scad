include <lib.scad>;

$fn = 64;

kp = 19.2;

l = kp * 6.5;
w = kp * 5.5;
h = 20;
c = [l, w] / 2;

// SKETCHES

module CASE_OUTER() {
    r = kp / 4;
    hull() {
        translate([l, w]) rotate(0) {
            continuous_corner(r);
        }
        translate([0, w]) rotate(90) {
            continuous_corner(r);
        }
        translate([0, 0]) rotate(180) {
            continuous_corner(r);
        }
        translate([l, 0]) rotate(270) {
            continuous_corner(r);
        }
    }
}

module CASE_INNER() {
    translate(c) smooth(3) square(kp*[6, 4]+[4, 4], center=true);
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
                translate([0, w/2-(w-kp*4-4)/4]) circle(d=2.4);
                translate([0, -w/2+(w-kp*4-4)/4]) circle(d=2.4);
            }
        }
    }
}

module INSERT_NUT_HOLE() {
    translate(c) {
        for (i = [-1:1]) {
            translate([kp*2.5*i, 0]) {
                translate([0, w/2-(w-kp*4-4)/4]) circle(d=3.5);
                translate([0, -w/2+(w-kp*4-4)/4]) circle(d=3.5);
            }
        }
    }
}

module SCREW_COUNTERBORE() {
    translate(c) {
        for (i = [-1:1]) {
            translate([kp*2.5*i, 0]) {
                translate([0, w/2-(w-kp*4-4)/4]) circle(d=5);
                translate([0, -w/2+(w-kp*4-4)/4]) circle(d=5);
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

module PLATE_STAY() {
    for (i = [-1, 1], j = [-1, 1]) {
        translate(c+[1.25*kp*i, (2*kp+3.5)*j]) {
            hull() {
                translate([-0.75*kp+1.5, 0]) circle(d=3);
                translate([0.75*kp-1.5, 0]) circle(d=3);
            }
        }
    }
}

module upper_case() {
    render(4) difference() {
        linear_extrude(h) CASE_OUTER();
        linear_extrude(h) UPPER_CASE_CUTOUT();
        linear_extrude(h - 6.6 + 1) PLATE_RECESS();
        linear_extrude(h-3) INSERT_NUT_HOLE();
        linear_extrude(h - 6.6 - 1.5 - 5 + 3.2/2) square([l, w]);
    }
}

module lower_case() {
    render(4) difference() {
        union() {
            linear_extrude(h - 6.6 - 1.5 - 5 + 3.2/2) CASE_OUTER();
            linear_extrude(h - 6.6 - 1.5 - 1) PLATE_STAY();
        }
        linear_extrude(h) SCREW_HOLE();
        linear_extrude(h - 6.6 - 1.5 - 5 + 3.2/2 - 3) SCREW_COUNTERBORE();
        translate([0, 0, 3]) linear_extrude(h - 6.6 - 1.5 - 5 + 3.2/2 - 3) CASE_INNER();
    }
}

!upper_case();
translate([0, 0, h - 6.6 - 1.5]) linear_extrude(1.5) PLATE();
lower_case();
