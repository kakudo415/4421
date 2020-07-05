function cubic_bezier(t, p0, p1, p2, p3) = pow(1-t, 3)*p0 + 3*pow(1-t, 2)*t*p1 + 3*(1-t)*pow(t, 2)*p2 + pow(t, 3)*p3;

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

module continuous_corner(r, a = 90) {
    n = $fn * a / 360;
    arc = [for (i = [n / 3 : n * 2 / 3]) [r * cos(i * (a / n)), r * sin(i * (a / n))]];
    curve1 = [for (i = [0 : n / 3]) [r * cos(i * (a / n)), r * sin(i * (a / n))]];
    curve2 = [for (i = [n * 2 / 3 : n]) [r * cos(i * (a / n)), r * sin(i * (a / n))]];
    points = concat([[0, 0]], curve1, arc, curve2, [[r * cos(a), r * sin(a)]]);
    color("#4CAF50") {
        polygon(points);
    }
}