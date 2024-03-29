if (follow) {
    angle = battle_board.angle;

    var pos = [];
    pos[0] = RotateAround(center_x, center_y, x1, y1,battle_board.x,battle_board.y, angle);
    pos[1] = RotateAround(center_x, center_y, x2, y2,battle_board.x,battle_board.y, angle);
    pos[2] = RotateAround(center_x, center_y, x2, y1,battle_board.x,battle_board.y, angle);
    pos[3] = RotateAround(center_x, center_y, x1, y2,battle_board.x,battle_board.y, angle);

    xx1 =  pos[0][0];
    yy1 =  pos[0][1];

    xx2 =  pos[1][0];
    yy2 =  pos[1][1];

    xx3 =  pos[2][0];
    yy3 =  pos[2][1];

    xx4 =  pos[3][0];
    yy4 =  pos[3][1];
} else {
    xx1 = x1;
    xx2 = x2;
    xx3 = x2;
    xx4 = x1;

    yy1 = y1;
    yy2 = y2;
    yy3 = y1;
    yy4 = y2;
}

draw_set_color(color);
surface_set_target(Battle_GetBoardSurface());

draw_line(xx1, yy1, xx3, yy3);
draw_line(xx1, yy1, xx4, yy4);
draw_line(xx2, yy2, xx3, yy3);
draw_line(xx2, yy2, xx4, yy4);

surface_reset_target();
