move_towards_point(mouse_x, mouse_y, 5)
var _dir = point_direction(x, y, mouse_x, mouse_y);
var _diff = angle_difference(_dir, image_angle);
image_angle = _diff - 90