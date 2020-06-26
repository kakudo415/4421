module key_hole(key_pitch, unit, height) {
  cube([key_pitch, key_pitch * unit, height], false);
}

module key_holes(key_pitch, row_offset) {
  union() {
    for (column = [0 : 5], row = [0 : 2]) {
      translate([key_pitch * column, key_pitch * (row + row_offset[column]), 0]) {
        key_hole(key_pitch, 1, 20);
      }
    }
  }
}

module body(height) {
  intersection() {
    cube([19.2 * (6.5), 19.2 * 6.5, height]);
    translate([19.2 * (6.5 / 2), 0, 0]) {
      cylinder(height, r=19.2 * 6.5, false, $fn=100);
    }
    translate([19.2 * (6.5 / 2), 19.2 * 6.5, 0]) {
      cylinder(height, r=19.2 * 6.5, false, $fn=100);
    }
  }
}

render(convexity = 10) { // これを入れると厚み0の隙間が消える。正直理解してない。
  difference() {
    body(20);
    translate([19.2 * (2 / 8), 19.2, 0]) {
      key_holes(19.2, [0/8, 1/8, 6/8, 8/8, 6/8, 4/8]);
    }
  }
}
