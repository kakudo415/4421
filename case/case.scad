include <lib.scad>;

$fn = 64;

kp = 19.2;

l = kp * 6.5;
w = kp * 5.5;
h = 25;
c = [l, w, 0] / 2;

ch = h
    - 6.6 // Key wall
    - 1.5 // Plate
    - 5   // Plate-PCB gap
    - 1.6 // PCB
    - 3.21 / 2; // USB receptacle

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
        x(1.25*kp) smooth(2) square([1.5*kp+2, (2 + 1.5/4)*kp*2], center=true);
        x(-1.25*kp) smooth(2) square([1.5*kp+2, (2 + 1.5/4)*kp*2], center=true);
    }
}

module SCREW_HOLE() {
    translate(c) {
        for (i = [-1:1]) {
            x(kp*2.5*i) {
                y((2 + 1.5/4)*kp) circle(d=3.4);
                y(-(2 + 1.5/4)*kp) circle(d=3.4);
            }
        }
    }
}

module SCREW_COUNTERBORE() {
    translate(c) {
        for (i = [-1:1]) {
            x(kp*2.5*i) {
                y((2 + 1.5/4)*kp) circle(d=6);
                y(-(2 + 1.5/4)*kp) circle(d=6);
            }
        }
    }
}

module HEXAGON_NUT_HOLE(S) {
    r = S / 2 / cos(30);
    p = [
        [0, 0],
        [r, 0],
        [r, 0] + [cos(60), sin(60)] * r / 3,
        [r, 0] + [cos(120), sin(120)] * r / 3,
        [cos(60), sin(60)] * r,
    ];
    for (t = [0 : 5]) {
        rotate(60 * t) polygon(p);
    }
}

module HEXAGON_NUT_HOLES(S) {
    translate(c) {
        for (i = [-1:1]) {
            x(kp*2.5*i) {
                y((2 + 1.5/4)*kp) HEXAGON_NUT_HOLE(S);
                y(-(2 + 1.5/4)*kp) HEXAGON_NUT_HOLE(S);
            }
        }
    }
}

module KEY_HOLE() {
    square([14, 14], center=true);
    y(5) smooth(0.3) square([16, 4], center=true);
    y(-5) smooth(0.3) square([16, 4], center=true);
}

module PLATE() {
    key_positions = [for (i=[-2.5:2.5], j=[-1.5:1.5]) [i, j]*kp];
    translate(c) difference() {
        fillet(1) {
            smooth(2) square(kp*[6, 4]+[2, 2], center=true);
            x(1.25*kp) smooth(1.5) square([1.5, 4]*kp+[0, 10], center=true);
            x(-1.25*kp) smooth(1.5) square([1.5, 4]*kp+[0, 10], center=true);
        }
        for (key_position = key_positions) {
            translate(key_position) KEY_HOLE();
        }
    }
}

module PLATE_STAY() {
    hull() {
        y(1.5/4*kp - 3.5 - 0.5 - 1.5) {
            x(0.75*kp-1) circle(d=3);
            x(-0.75*kp+1) circle(d=3);
        }
        x(0.75*kp-1) circle(d=3);
        x(-0.75*kp+1) circle(d=3);
    }
}

module PLATE_STAYS() {
    translate(c) {
        translate([1.25*kp, 2*kp+3.5]) PLATE_STAY();
        translate([-1.25*kp, 2*kp+3.5]) PLATE_STAY();
        translate([1.25*kp, -2*kp-3.5]) rotate(180) PLATE_STAY();
        translate([-1.25*kp, -2*kp-3.5]) rotate(180) PLATE_STAY();
    }
}

module PCB() {
    translate(c) {
        smooth(1) square(kp*[6, 4], center=true);
    }
}

module mj4pp9() {
    color("dimgray") difference() {
        union() z(2.5) {
            y(6.05-14.10) cube([6, 12.10, 5], center=true);
            rotate(90, [1, 0, 0]) cylinder(d=5, h=14.10);
        }
        translate([0, 50, 2.5]) rotate(90, [1, 0, 0]) cylinder(d=3.6, h=100);
    }
}

module type_c_31_m_12() {
    color("silver") z(1.605) {
        difference() {
            hull() {
                x(4.47-1.605) rotate(90, [1, 0, 0]) cylinder(d=3.21, h=7.30);
                x(-4.47+1.605) rotate(90, [1, 0, 0]) cylinder(d=3.21, h=7.30);
            }
            translate([0, 1, 0]) hull() {
                x(4.47-1.605) rotate(90, [1, 0, 0]) cylinder(d=2.56, h=7.30);
                x(-4.47+1.605) rotate(90, [1, 0, 0]) cylinder(d=2.56, h=7.30);
            }
        }
        y(-4.15) cube([6.49, 6.30, 0.7], center=true);
    }
}

module pcb(right) {
    color("darkgreen") linear_extrude(1.6) PCB();
    translate(c) z(-5) {
        if (right) {
            x(-kp*3-2) rotate(90) mj4pp9();
        } else {
            x(kp*3+2) rotate(270) mj4pp9();
        }
    }
    translate(c) z(-3.21) {
        translate([kp*3, 21.37]) rotate(270) type_c_31_m_12();
    }
}

module gasket() {
    color("black") {
        for (i = [-1, 1.5]) z(i) hull() {
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

module upper_case(right) {
    color("ivory") render(4) difference() {
        linear_extrude(h) CASE_OUTER();
        if (right) {
            linear_extrude(h) UPPER_CASE_CUTOUT();
        } else {
            translate([6.5*kp, 0, h]) rotate(180, [0, 1, 0]) linear_extrude(h) UPPER_CASE_CUTOUT();
        }
        linear_extrude(h - 6.6 + 1) PLATE_RECESS();
        linear_extrude(h) SCREW_HOLE();
        z(h-5) linear_extrude(5) SCREW_COUNTERBORE();
        translate(c) z(ch) {
            if (right) {
                x(-3.25*kp) rotate(90, [0, 1, 0]) cylinder(d=8, h=30);
            } else {
                x(3.25*kp) rotate(270, [0, 1, 0]) cylinder(d=8, h=30);
            }
            translate([3.25*kp, 21.37, 0]) hull() {
                y(, 2.925) rotate(270, [0, 1, 0]) cylinder(d=7.5, h=30);
                y(-2.925) rotate(270, [0, 1, 0]) cylinder(d=7.5, h=30);
            }
        }
        linear_extrude(ch) square([l, w]);
    }
}

module lower_case(right) {
    color("ivory") render(4) difference() {
        union() {
            linear_extrude(ch) CASE_OUTER();
            linear_extrude(h - 6.6 - 1.5 - 1) PLATE_STAYS();
        }
        linear_extrude(h) SCREW_HOLE();
        linear_extrude(3) HEXAGON_NUT_HOLES(5.5);
        z(3) linear_extrude(ch - 3) CASE_INNER();
        translate(c) z(h - 6.6 - 1.5 - 5 - 1.6) {
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
            translate([3.25*kp, 21.37, -1.605]) hull() {
                y(2.925) rotate(270, [0, 1, 0]) cylinder(d=7.5, h=30);
                y(-2.925) rotate(270, [0, 1, 0]) cylinder(d=7.5, h=30);
            }
        }
    }
}

x(10) {
    upper_case(true);
    translate([0, 0, h - 6.6 - 1.5]) plate();
    translate([0, 0, h - 6.6 - 1.5 - 5 - 1.6]) pcb(true);
    lower_case(true);
}

x(-10-l) {
    upper_case(false);
    translate([0, 0, h - 6.6 - 1.5]) plate();
    translate([0, 0, h - 6.6 - 1.5 - 5 - 1.6]) pcb(false);
    lower_case(false);
}

// !PLATE();
