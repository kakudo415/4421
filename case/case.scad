module key_hole(key_pitch, unit, height) {
  cube([key_pitch * unit, key_pitch, height], false);
}

module key_holes(key_pitch, height, keys) {
  for (key = keys) {
    translate([key[1][0], key[1][1], 0]) {
      key_hole(key_pitch, key[0], height);
    }
  }
}

// module body(height) {
//   intersection() {
//     cube([19.2 * (7.5), 19.2 * 7.5, height]);
//     translate([19.2 * (6.5 / 2), 0, 0]) {
//       cylinder(height, r=19.2 * 7.5, false, $fn=100);
//     }
//     translate([19.2 * (6.5 / 2), 19.2 * 7.5, 0]) {
//       cylinder(height, r=19.2 * 7.5, false, $fn=100);
//     }
//   }
// }

module body(height) {
  translate([19.2 * 4.5, 19.2 * 4.5, 0]) {
    cylinder(height, r=19.2 * 4.5, false, $fn=100);
  }
}

render(convexity = 10) { // これを入れると厚み0の隙間が消える。なぜかは分かってない。
  kp = 19.2;
  difference() {
    body(20);
    // 親指のキー穴
    translate([kp * (5 + 6 / 8), kp * (3 + 4/8), 0]) {
      rotate(247.5, [0, 0, 1]) {
        key_holes(
          kp,
          20,
          [
            [1.5, [0, 0]],
            [1.5, [0, kp * 1]]
          ]
        );
      }
    }
    // その他の指のキー穴
    translate([kp * (6 / 8), kp * 3, 0]) {
      key_holes(
        kp,
        20,
        [
          [1, [kp * 0, kp * (0/8 + 0)]],
          [1, [kp * 0, kp * (0/8 + 1)]],
          [1, [kp * 0, kp * (0/8 + 2)]],

          [1, [kp * 1, kp * (1/8 - 1)]],
          [1, [kp * 1, kp * (1/8 + 0)]],
          [1, [kp * 1, kp * (1/8 + 1)]],
          [1, [kp * 1, kp * (1/8 + 2)]],

          [1, [kp * 2, kp * (6/8 - 1)]],
          [1, [kp * 2, kp * (6/8 + 0)]],
          [1, [kp * 2, kp * (6/8 + 1)]],
          [1, [kp * 2, kp * (6/8 + 2)]],

          [1, [kp * 3, kp * (8/8 + 0)]],
          [1, [kp * 3, kp * (8/8 + 1)]],
          [1, [kp * 3, kp * (8/8 + 2)]],

          [1, [kp * 4, kp * (6/8 + 0)]],
          [1, [kp * 4, kp * (6/8 + 1)]],
          [1, [kp * 4, kp * (6/8 + 2)]],

          [1, [kp * 5, kp * (4/8 + 0)]],
          [1, [kp * 5, kp * (4/8 + 1)]],
          [1, [kp * 5, kp * (4/8 + 2)]],
        ]
      );
    }
  }
}
