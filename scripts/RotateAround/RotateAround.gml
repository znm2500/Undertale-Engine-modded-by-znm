function RotateAround(x_center, y_center, x_around, y_around, angle) {
    var dx = x_around - x_center;
    var dy = y_around - y_center;
    var xx = lengthdir_x(dx, angle) - lengthdir_y(dy, angle);
    var yy = lengthdir_x(dy, angle) + lengthdir_y(dx, angle);
    return [xx, yy];
}