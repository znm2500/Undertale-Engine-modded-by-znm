if (instance_exists(_inst_name)) {
    instance_destroy(_inst_name);
}
if (instance_exists(_inst_menu)) {
    instance_destroy(_inst_menu);
}
if (instance_exists(_inst_item)) {
    instance_destroy(_inst_item);
}
if (instance_exists(_inst_item_use)) {
    instance_destroy(_inst_item_use);
}
if (instance_exists(_inst_item_info)) {
    instance_destroy(_inst_item_info);
}
if (instance_exists(_inst_item_drop)) {
    instance_destroy(_inst_item_drop);
}
if (instance_exists(_inst_stat_0)) {
    instance_destroy(_inst_stat_0);
}
if (instance_exists(_inst_stat_1)) {
    instance_destroy(_inst_stat_1);
}
if (instance_exists(_inst_phone)) {
    instance_destroy(_inst_phone);
}
surface_free(_surface) if (instance_exists(char_player)) {
    char_player._moveable_menu = true;
}