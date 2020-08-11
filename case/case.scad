include <lib.scad>;

$fn = 64;

kp = 19.2;

l = kp * 6.5;
w = kp * 5.5;
h = 25;
ch = h - 6.6 - 1.5 - 5 - 1.6 - 1.605 + 7.5 / 2;
c = [l, w, 0] / 2;

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
        translate([2, -2]*kp) square(kp*[1, 1]);
        translate([-1, -2]*kp) square(kp*[1, 1]);
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

module KEY_HOLE() {
    square([14, 14], center=true);
    translate([0, 4.9]) square([16, 4.2], center=true);
    translate([0, -4.9]) square([16, 4.2], center=true);
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
            translate(key_position) KEY_HOLE();
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

module PCB() {
    translate(c) {
        smooth(1) square(kp*[6, 4], center=true);
    }
}

module mj4pp9() {
    color("dimgray") difference() {
        union() {
            translate([0, 6.05-14.10, 2.5]) cube([6, 12.10, 5], center=true);
            translate([0, 0, 2.5]) rotate(90, [1, 0, 0]) cylinder(d=5, h=14.10);
        }
        translate([0, 50, 2.5]) rotate(90, [1, 0, 0]) cylinder(d=3.6, h=100);
    }
}

module type_c_31_m_12() {
    color("silver") translate([0, 0, 1.605]) {
        difference() {
            hull() {
                translate([4.47-1.605, 0, 0]) rotate(90, [1, 0, 0]) cylinder(d=3.21, h=7.30);
                translate(-[4.47-1.605, 0, 0]) rotate(90, [1, 0, 0]) cylinder(d=3.21, h=7.30);
            }
            translate([0, 1, 0]) hull() {
                translate([4.47-1.605, 0, 0]) rotate(90, [1, 0, 0]) cylinder(d=2.56, h=7.30);
                translate(-[4.47-1.605, 0, 0]) rotate(90, [1, 0, 0]) cylinder(d=2.56, h=7.30);
            }
        }
        translate([0, -4.15, 0]) cube([6.49, 6.30, 0.7], center=true);
    }
}

module pcb(right) {
    color("darkgreen") linear_extrude(1.6) PCB();
    translate(c+[0, 0, -5]) {
        if (right) {
            translate([-kp*3-2, 0]) rotate(90) mj4pp9();
        } else {
            translate([kp*3+2, 0]) rotate(270) mj4pp9();
        }
    }
    translate(c+[0, 0, -3.21]) {
        translate([kp*3, 21.37]) rotate(270) type_c_31_m_12();
    }
}

module gasket() {
    color("black") {
        translate([0, 0, -1]) hull() {
            translate([-0.75*kp+1.5, 0]) cylinder(d=3, h=1);
            translate([0.75*kp-1.5, 0]) cylinder(d=3, h=1);
        }
        translate([0, 0, 1.5]) hull() {
            translate([-0.75*kp+1.5, 0]) cylinder(d=3, h=1);
            translate([0.75*kp-1.5, 0]) cylinder(d=3, h=1);
        }
    }
}

module plate() {
    color("silver") linear_extrude(1.5) PLATE();
    translate(c) {
        translate([1.25*kp, 2*kp+3.5]) gasket();
        translate([-1.25*kp, 2*kp+3.5]) gasket();
        translate([1.25*kp, -2*kp-3.5]) gasket();
        translate([-1.25*kp, -2*kp-3.5]) gasket();
    }
}

module upper_case() {
    color("olivedrab") render(4) difference() {
        linear_extrude(h) CASE_OUTER();
        linear_extrude(h) UPPER_CASE_CUTOUT();
        linear_extrude(h - 6.6 + 1) PLATE_RECESS();
        linear_extrude(h-3) INSERT_NUT_HOLE();
        linear_extrude(ch) square([l, w]);
    }
}

module lower_case(right) {
    color("olivedrab") render(4) difference() {
        union() {
            linear_extrude(ch) CASE_OUTER();
            linear_extrude(h - 6.6 - 1.5 - 1) PLATE_STAY();
        }
        linear_extrude(h) SCREW_HOLE();
        linear_extrude(ch - 3) SCREW_COUNTERBORE();
        translate([0, 0, 3]) linear_extrude(ch - 3) CASE_INNER();
        translate(c+[0, 0, h - 6.6 - 1.5 - 5 - 1.6]) {
            if (right) {
                hull() {
                    translate([-3.25*kp, 0, -2.5]) rotate(90, [0, 1, 0]) cylinder(d=8, h=30);
                    translate([-3.25*kp, 0, 10]) rotate(90, [0, 1, 0]) cylinder(d=8, h=30);
                }
            } else {
                hull() {
                    translate([3.25*kp, 0, -2.5]) rotate(270, [0, 1, 0]) cylinder(d=8, h=30);
                    translate([3.25*kp, 0, 10]) rotate(270, [0, 1, 0]) cylinder(d=8, h=30);
                }
            }
            if (right) {
                hull() {
                    translate([3.25*kp, 21.37, -1.605]) hull() {
                        translate([0, 2.95, 0]) rotate(270, [0, 1, 0]) cylinder(d=7.5, h=30);
                        translate([0, -2.95, 0]) rotate(270, [0, 1, 0]) cylinder(d=7.5, h=30);
                    }
                    translate([3.25*kp, 21.37, 10]) hull() {
                        translate([0, 2.95, 0]) rotate(270, [0, 1, 0]) cylinder(d=7.5, h=30);
                        translate([0, -2.95, 0]) rotate(270, [0, 1, 0]) cylinder(d=7.5, h=30);
                    }
                }
            }
        }
    }
}

translate([10, 0, 0]) {
    upper_case();
    translate([0, 0, h - 6.6 - 1.5]) plate();
    translate([0, 0, h - 6.6 - 1.5 - 5 - 1.6]) pcb(true);
    lower_case(true);
}

translate([-10-l, 0, 0]) {
    upper_case();
    translate([0, 0, h - 6.6 - 1.5]) plate();
    translate([0, 0, h - 6.6 - 1.5 - 5 - 1.6]) pcb(false);
    lower_case(false);
}
