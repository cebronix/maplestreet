/// @description 

global.create_index = 0;
global.parts_index = 0;
global.create_rows = 2;
global.parts_cols = 6;
global.partIsSelected = false;
last_selected = 0;
last_part_selected = 0;

#region PARTICLES

particle_effects = part_system_create();
part_system_depth(particle_effects, -1000);

box_flash = part_type_create();
part_type_shape(box_flash, pt_shape_line);
part_type_size(box_flash, 6, 6, -.02, 0);
part_type_color3(box_flash, c_red,c_orange,c_red);
part_type_alpha3(box_flash, .3, 0.5, 0);
part_type_blend(box_flash, true);
part_type_life(box_flash, 20, 20);

part_flash = part_type_create();
part_type_shape(part_flash, pt_shape_square);
part_type_size(part_flash, 1, 1, -.02, 0);
part_type_color3(part_flash, c_red,c_orange,c_red);
part_type_alpha3(part_flash, .3, 0.5, 0);
part_type_blend(part_flash, true);
part_type_life(part_flash, 20, 20);

#endregion