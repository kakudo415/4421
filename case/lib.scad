function cubic_bezier(t, p0, p1, p2, p3) = pow(1-t, 3)*p0 + 3*pow(1-t, 2)*t*p1 + 3*(1-t)*pow(t, 2)*p2 + pow(t, 3)*p3;

function clothoid(t) = [cos_radian(t * t / 2), sin_radian(t * t / 2)];

function cum_sum(v, _i=0,  _a=[]) =
    _i == len(v) ? _a :
    cum_sum(
        v, _i+1,
        concat(
            _a,
            [_i == 0 ? v[_i] : _a[len(_a)-1]+v[_i]]
        )
    );

function reverse(v) = [for (i = [0 : len(v)-1]) v[len(v)-1-i]];

function sin_radian(d) = sin(180 * d / PI);
function cos_radian(d) = cos(180 * d / PI);

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

module chamfered_square(size, c) {
    difference() {
        square(size);
        polygon([[0, 0], [0, c], [c, 0]]);
        polygon([[0, size[1]], [c, size[1]], [0, size[1] - c]]);
        polygon([[size[0], size[1]], [size[0], size[1] - c], [size[0] - c, size[1]]]);
        polygon([[size[0], 0], [size[0], c], [size[0] - c, 0]]);
    }
}

// Continuous 90' Corner
module continuous_corner(r) {
    n = $fn;

    _arc = [for (i = [n : 2 * n]) [cos(30 * i / n), sin(30 * i / n)]];
    arc = [for (i = _arc) r * i];

    dt = sqrt(PI / 3) / n;
    c1 = cum_sum(concat([[0, 0]], reverse([for (t = [0 : dt : sqrt(PI/3)]) clothoid(t) * dt]))) * sqrt(PI/3) * r;

    d = arc[0][0] + (c1[len(c1)-1] - c1[0])[1];
    translate([-d, -d]) {
        color("#2196F3") polygon(arc);
        color("#4CAF50") {
            translate(arc[0]) rotate(-90) polygon(c1);
            mirror([-1, 1, 0]) translate(arc[0]) rotate(-90) polygon(c1);
        }
    }
}
