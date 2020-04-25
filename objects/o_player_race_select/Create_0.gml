/// @description 

image_speed = 0.02;
xx = 0;
yy = 0;

//Create ds_grids for full sprites
#region Robot

robot_grid = ds_grid_create(4,2);
ds_grid_add(robot_grid,0,0,s_robot_d_idle);
ds_grid_add(robot_grid,0,1,s_robot_u_idle);
ds_grid_add(robot_grid,1,0,s_robot_l_idle);
ds_grid_add(robot_grid,1,1,s_robot_r_idle);
ds_grid_add(robot_grid,2,0,s_robot_d_walk);
ds_grid_add(robot_grid,2,1,s_robot_u_walk);
ds_grid_add(robot_grid,3,0,s_robot_l_walk);
ds_grid_add(robot_grid,3,1,s_robot_r_walk);

#endregion
#region Squid

squid_grid = ds_grid_create(4,2);
ds_grid_add(squid_grid,0,0,s_squid_d_idle);
ds_grid_add(squid_grid,0,1,s_squid_u_idle);
ds_grid_add(squid_grid,1,0,s_squid_l_idle);
ds_grid_add(squid_grid,1,1,s_squid_r_idle);
ds_grid_add(squid_grid,2,0,s_squid_d_walk);
ds_grid_add(squid_grid,2,1,s_squid_u_walk);
ds_grid_add(squid_grid,3,0,s_squid_l_walk);
ds_grid_add(squid_grid,3,1,s_squid_r_walk);

#endregion
#region Energy

energy_grid = ds_grid_create(4,2);
ds_grid_add(energy_grid,0,0,s_energy_d_idle);
ds_grid_add(energy_grid,0,1,s_energy_u_idle);
ds_grid_add(energy_grid,1,0,s_energy_l_idle);
ds_grid_add(energy_grid,1,1,s_energy_r_idle);
ds_grid_add(energy_grid,2,0,s_energy_d_walk);
ds_grid_add(energy_grid,2,1,s_energy_u_walk);
ds_grid_add(energy_grid,3,0,s_energy_l_walk);
ds_grid_add(energy_grid,3,1,s_energy_r_walk);

#endregion
#region Bug

bug_grid = ds_grid_create(4,2);
ds_grid_add(bug_grid,0,0,s_bug_d_idle);
ds_grid_add(bug_grid,0,1,s_bug_u_idle);
ds_grid_add(bug_grid,1,0,s_bug_l_idle);
ds_grid_add(bug_grid,1,1,s_bug_r_idle);
ds_grid_add(bug_grid,2,0,s_bug_d_walk);
ds_grid_add(bug_grid,2,1,s_bug_u_walk);
ds_grid_add(bug_grid,3,0,s_bug_l_walk);
ds_grid_add(bug_grid,3,1,s_bug_r_walk);

#endregion

enum p_race {
	robot,
	squid,
	energy,
	bug,
	splice
}

global.sel_race = p_race.robot;

//Create ds_grids for partial sprites
#region Left Leg

global.ll_grid = ds_grid_create(5,8);
//Robot
ds_grid_add(global.ll_grid,0,0,s_r_ll_d_idle);
ds_grid_add(global.ll_grid,0,1,s_r_ll_u_idle);
ds_grid_add(global.ll_grid,0,2,s_r_ll_l_idle);
ds_grid_add(global.ll_grid,0,3,s_r_ll_r_idle);
ds_grid_add(global.ll_grid,0,4,s_r_ll_d_walk);
ds_grid_add(global.ll_grid,0,5,s_r_ll_u_walk);
ds_grid_add(global.ll_grid,0,6,s_r_ll_l_walk);
ds_grid_add(global.ll_grid,0,7,s_r_ll_r_walk);
//Squid
ds_grid_add(global.ll_grid,1,0,s_s_ll_d_idle);
ds_grid_add(global.ll_grid,1,1,s_s_ll_u_idle);
ds_grid_add(global.ll_grid,1,2,s_s_ll_l_idle);
ds_grid_add(global.ll_grid,1,3,s_s_ll_r_idle);
ds_grid_add(global.ll_grid,1,4,s_s_ll_d_walk);
ds_grid_add(global.ll_grid,1,5,s_s_ll_u_walk);
ds_grid_add(global.ll_grid,1,6,s_s_ll_l_walk);
ds_grid_add(global.ll_grid,1,7,s_s_ll_r_walk);
//Energy
ds_grid_add(global.ll_grid,2,0,rl_empty);
ds_grid_add(global.ll_grid,2,1,rl_empty);
ds_grid_add(global.ll_grid,2,2,rl_empty);
ds_grid_add(global.ll_grid,2,3,rl_empty);
ds_grid_add(global.ll_grid,2,4,rl_empty);
ds_grid_add(global.ll_grid,2,5,rl_empty);
ds_grid_add(global.ll_grid,2,6,rl_empty);
ds_grid_add(global.ll_grid,2,7,rl_empty)
//Bug
ds_grid_add(global.ll_grid,3,0,s_b_ll_d_idle);
ds_grid_add(global.ll_grid,3,1,s_b_ll_u_idle);
ds_grid_add(global.ll_grid,3,2,s_b_ll_l_idle);
ds_grid_add(global.ll_grid,3,3,s_b_ll_r_idle);
ds_grid_add(global.ll_grid,3,4,s_b_ll_d_walk);
ds_grid_add(global.ll_grid,3,5,s_b_ll_u_walk);
ds_grid_add(global.ll_grid,3,6,s_b_ll_l_walk);
ds_grid_add(global.ll_grid,3,7,s_b_ll_r_walk);
//Empty
ds_grid_add(global.ll_grid,4,0,rl_empty);


#endregion
#region Right Leg

global.rl_grid = ds_grid_create(5,8);
//Robot
ds_grid_add(global.rl_grid,0,0,s_r_rl_d_idle);
ds_grid_add(global.rl_grid,0,1,s_r_rl_u_idle);
ds_grid_add(global.rl_grid,0,2,s_r_rl_l_idle);
ds_grid_add(global.rl_grid,0,3,s_r_rl_r_idle);
ds_grid_add(global.rl_grid,0,4,s_r_rl_d_walk);
ds_grid_add(global.rl_grid,0,5,s_r_rl_u_walk);
ds_grid_add(global.rl_grid,0,6,s_r_rl_l_walk);
ds_grid_add(global.rl_grid,0,7,s_r_rl_r_walk);
//Squid
ds_grid_add(global.rl_grid,1,0,s_s_rl_d_idle);
ds_grid_add(global.rl_grid,1,1,s_s_rl_u_idle);
ds_grid_add(global.rl_grid,1,2,s_s_rl_l_idle);
ds_grid_add(global.rl_grid,1,3,s_s_rl_r_idle);
ds_grid_add(global.rl_grid,1,4,s_s_rl_d_walk);
ds_grid_add(global.rl_grid,1,5,s_s_rl_u_walk);
ds_grid_add(global.rl_grid,1,6,s_s_rl_l_walk);
ds_grid_add(global.rl_grid,1,7,s_s_rl_r_walk);
//Energy
ds_grid_add(global.rl_grid,2,0,s_e_rl_d_idle);
ds_grid_add(global.rl_grid,2,1,s_e_rl_u_idle);
ds_grid_add(global.rl_grid,2,2,s_e_rl_l_idle);
ds_grid_add(global.rl_grid,2,3,s_e_rl_r_idle);
ds_grid_add(global.rl_grid,2,4,s_e_rl_d_walk);
ds_grid_add(global.rl_grid,2,5,s_e_rl_u_walk);
ds_grid_add(global.rl_grid,2,6,s_e_rl_l_walk);
ds_grid_add(global.rl_grid,2,7,s_e_rl_r_walk);
//Bug
ds_grid_add(global.rl_grid,3,0,s_b_rl_d_idle);
ds_grid_add(global.rl_grid,3,1,s_b_rl_u_idle);
ds_grid_add(global.rl_grid,3,2,s_b_rl_l_idle);
ds_grid_add(global.rl_grid,3,3,s_b_rl_r_idle);
ds_grid_add(global.rl_grid,3,4,s_b_rl_d_walk);
ds_grid_add(global.rl_grid,3,5,s_b_rl_u_walk);
ds_grid_add(global.rl_grid,3,6,s_b_rl_l_walk);
ds_grid_add(global.rl_grid,3,7,s_b_rl_r_walk);
//Empty
ds_grid_add(global.rl_grid,4,0,rl_empty);

#endregion
#region Left Arm

global.la_grid = ds_grid_create(5,8);
//Robot
ds_grid_add(global.la_grid,0,0,s_r_la_d_idle);
ds_grid_add(global.la_grid,0,1,s_r_la_u_idle);
ds_grid_add(global.la_grid,0,2,s_r_la_l_idle);
ds_grid_add(global.la_grid,0,3,s_r_la_r_idle);
ds_grid_add(global.la_grid,0,4,s_r_la_d_walk);
ds_grid_add(global.la_grid,0,5,s_r_la_u_walk);
ds_grid_add(global.la_grid,0,6,s_r_la_l_walk);
ds_grid_add(global.la_grid,0,7,s_r_la_r_walk);
//Squid
ds_grid_add(global.la_grid,1,0,s_s_la_d_idle);
ds_grid_add(global.la_grid,1,1,s_s_la_u_idle);
ds_grid_add(global.la_grid,1,2,s_s_la_l_idle);
ds_grid_add(global.la_grid,1,3,s_s_la_r_idle);
ds_grid_add(global.la_grid,1,4,s_s_la_d_walk);
ds_grid_add(global.la_grid,1,5,s_s_la_u_walk);
ds_grid_add(global.la_grid,1,6,s_s_la_l_walk);
ds_grid_add(global.la_grid,1,7,s_s_la_r_walk);
//Energy
ds_grid_add(global.la_grid,2,0,s_e_la_d_idle);
ds_grid_add(global.la_grid,2,1,s_e_la_u_idle);
ds_grid_add(global.la_grid,2,2,s_e_la_l_idle);
ds_grid_add(global.la_grid,2,3,s_e_la_r_idle);
ds_grid_add(global.la_grid,2,4,s_e_la_d_walk);
ds_grid_add(global.la_grid,2,5,s_e_la_u_walk);
ds_grid_add(global.la_grid,2,6,s_e_la_l_walk);
ds_grid_add(global.la_grid,2,7,s_e_la_r_walk);
//Bug
ds_grid_add(global.la_grid,3,0,s_b_la_d_idle);
ds_grid_add(global.la_grid,3,1,s_b_la_u_idle);
ds_grid_add(global.la_grid,3,2,s_b_la_l_idle);
ds_grid_add(global.la_grid,3,3,s_b_la_r_idle);
ds_grid_add(global.la_grid,3,4,s_b_la_d_walk);
ds_grid_add(global.la_grid,3,5,s_b_la_u_walk);
ds_grid_add(global.la_grid,3,6,s_b_la_l_walk);
ds_grid_add(global.la_grid,3,7,s_b_la_r_walk);
//Empty
ds_grid_add(global.la_grid,4,0,la_empty);

#endregion
#region Right Arm

global.ra_grid = ds_grid_create(5,8);
//Robot
ds_grid_add(global.ra_grid,0,0,s_r_ra_d_idle);
ds_grid_add(global.ra_grid,0,1,s_r_ra_u_idle);
ds_grid_add(global.ra_grid,0,2,s_r_ra_l_idle);
ds_grid_add(global.ra_grid,0,3,s_r_ra_r_idle);
ds_grid_add(global.ra_grid,0,4,s_r_ra_d_walk);
ds_grid_add(global.ra_grid,0,5,s_r_ra_u_walk);
ds_grid_add(global.ra_grid,0,6,s_r_ra_l_walk);
ds_grid_add(global.ra_grid,0,7,s_r_ra_r_walk);
//Squid
ds_grid_add(global.ra_grid,1,0,s_s_ra_d_idle);
ds_grid_add(global.ra_grid,1,1,s_s_ra_u_idle);
ds_grid_add(global.ra_grid,1,2,s_s_ra_l_idle);
ds_grid_add(global.ra_grid,1,3,s_s_ra_r_idle);
ds_grid_add(global.ra_grid,1,4,s_s_ra_d_walk);
ds_grid_add(global.ra_grid,1,5,s_s_ra_u_walk);
ds_grid_add(global.ra_grid,1,6,s_s_ra_l_walk);
ds_grid_add(global.ra_grid,1,7,s_s_ra_r_walk);
//Energy
ds_grid_add(global.ra_grid,2,0,s_e_ra_d_idle);
ds_grid_add(global.ra_grid,2,1,s_e_ra_u_idle);
ds_grid_add(global.ra_grid,2,2,s_e_ra_l_idle);
ds_grid_add(global.ra_grid,2,3,s_e_ra_r_idle);
ds_grid_add(global.ra_grid,2,4,s_e_ra_d_walk);
ds_grid_add(global.ra_grid,2,5,s_e_ra_u_walk);
ds_grid_add(global.ra_grid,2,6,s_e_ra_l_walk);
ds_grid_add(global.ra_grid,2,7,s_e_ra_r_walk);
//Bug
ds_grid_add(global.ra_grid,3,0,s_b_ra_d_idle);
ds_grid_add(global.ra_grid,3,1,s_b_ra_u_idle);
ds_grid_add(global.ra_grid,3,2,s_b_ra_l_idle);
ds_grid_add(global.ra_grid,3,3,s_b_ra_r_idle);
ds_grid_add(global.ra_grid,3,4,s_b_ra_d_walk);
ds_grid_add(global.ra_grid,3,5,s_b_ra_u_walk);
ds_grid_add(global.ra_grid,3,6,s_b_ra_l_walk);
ds_grid_add(global.ra_grid,3,7,s_b_ra_r_walk);
//Empty
ds_grid_add(global.ra_grid,4,0,ra_empty);

#endregion
#region Torso

global.t_grid = ds_grid_create(5,8);
//Robot
ds_grid_add(global.t_grid,0,0,s_r_t_d_idle);
ds_grid_add(global.t_grid,0,1,s_r_t_u_idle);
ds_grid_add(global.t_grid,0,2,s_r_t_l_idle);
ds_grid_add(global.t_grid,0,3,s_r_t_r_idle);
ds_grid_add(global.t_grid,0,4,s_r_t_d_walk);
ds_grid_add(global.t_grid,0,5,s_r_t_u_walk);
ds_grid_add(global.t_grid,0,6,s_r_t_l_walk);
ds_grid_add(global.t_grid,0,7,s_r_t_r_walk);
//Squid
ds_grid_add(global.t_grid,1,0,s_s_t_d_idle);
ds_grid_add(global.t_grid,1,1,s_s_t_u_idle);
ds_grid_add(global.t_grid,1,2,s_s_t_l_idle);
ds_grid_add(global.t_grid,1,3,s_s_t_r_idle);
ds_grid_add(global.t_grid,1,4,s_s_t_d_walk);
ds_grid_add(global.t_grid,1,5,s_s_t_u_walk);
ds_grid_add(global.t_grid,1,6,s_s_t_l_walk);
ds_grid_add(global.t_grid,1,7,s_s_t_r_walk);
//Energy
ds_grid_add(global.t_grid,2,0,s_e_t_d_idle);
ds_grid_add(global.t_grid,2,1,s_e_t_u_idle);
ds_grid_add(global.t_grid,2,2,s_e_t_l_idle);
ds_grid_add(global.t_grid,2,3,s_e_t_r_idle);
ds_grid_add(global.t_grid,2,4,s_e_t_d_walk);
ds_grid_add(global.t_grid,2,5,s_e_t_u_walk);
ds_grid_add(global.t_grid,2,6,s_e_t_l_walk);
ds_grid_add(global.t_grid,2,7,s_e_t_r_walk);
//Bug
ds_grid_add(global.t_grid,3,0,s_b_t_d_idle);
ds_grid_add(global.t_grid,3,1,s_b_t_u_idle);
ds_grid_add(global.t_grid,3,2,s_b_t_l_idle);
ds_grid_add(global.t_grid,3,3,s_b_t_r_idle);
ds_grid_add(global.t_grid,3,4,s_b_t_d_walk);
ds_grid_add(global.t_grid,3,5,s_b_t_u_walk);
ds_grid_add(global.t_grid,3,6,s_b_t_l_walk);
ds_grid_add(global.t_grid,3,7,s_b_t_r_walk);
//Empty
ds_grid_add(global.t_grid,4,0,t_empty);

#endregion
#region Torso Acc
global.ta_grid = ds_grid_create(5,8);
//Robot
ds_grid_add(global.ta_grid,0,0,ta_empty);
ds_grid_add(global.ta_grid,0,1,ta_empty);
ds_grid_add(global.ta_grid,0,2,ta_empty);
ds_grid_add(global.ta_grid,0,3,ta_empty);
ds_grid_add(global.ta_grid,0,4,ta_empty);
ds_grid_add(global.ta_grid,0,5,ta_empty);
ds_grid_add(global.ta_grid,0,6,ta_empty);
ds_grid_add(global.ta_grid,0,7,ta_empty);
//Squid
ds_grid_add(global.ta_grid,1,0,s_s_ta_d_idle);
ds_grid_add(global.ta_grid,1,1,s_s_ta_u_idle);
ds_grid_add(global.ta_grid,1,2,s_s_ta_l_idle);
ds_grid_add(global.ta_grid,1,3,s_s_ta_r_idle);
ds_grid_add(global.ta_grid,1,4,s_s_ta_d_walk);
ds_grid_add(global.ta_grid,1,5,s_s_ta_u_walk);
ds_grid_add(global.ta_grid,1,6,s_s_ta_l_walk);
ds_grid_add(global.ta_grid,1,7,s_s_ta_r_walk);
//Energy
ds_grid_add(global.ta_grid,2,0,ta_empty);
ds_grid_add(global.ta_grid,2,1,ta_empty);
ds_grid_add(global.ta_grid,2,2,ta_empty);
ds_grid_add(global.ta_grid,2,3,ta_empty);
ds_grid_add(global.ta_grid,2,4,ta_empty);
ds_grid_add(global.ta_grid,2,5,ta_empty);
ds_grid_add(global.ta_grid,2,6,ta_empty);
ds_grid_add(global.ta_grid,2,7,ta_empty);
//Bug
ds_grid_add(global.ta_grid,3,0,s_b_ta_d_idle);
ds_grid_add(global.ta_grid,3,1,s_b_ta_u_idle);
ds_grid_add(global.ta_grid,3,2,s_b_ta_l_idle);
ds_grid_add(global.ta_grid,3,3,s_b_ta_r_idle);
ds_grid_add(global.ta_grid,3,4,s_b_ta_d_walk);
ds_grid_add(global.ta_grid,3,5,s_b_ta_u_walk);
ds_grid_add(global.ta_grid,3,6,s_b_ta_l_walk);
ds_grid_add(global.ta_grid,3,7,s_b_ta_r_walk);
//Empty
ds_grid_add(global.ta_grid,4,0,ta_empty);
#endregion
#region Head

global.h_grid = ds_grid_create(5,8);
//Robot
ds_grid_add(global.h_grid,0,0,s_r_h_d_idle);
ds_grid_add(global.h_grid,0,1,s_r_h_u_idle);
ds_grid_add(global.h_grid,0,2,s_r_h_l_idle);
ds_grid_add(global.h_grid,0,3,s_r_h_r_idle);
ds_grid_add(global.h_grid,0,4,s_r_h_d_walk);
ds_grid_add(global.h_grid,0,5,s_r_h_u_walk);
ds_grid_add(global.h_grid,0,6,s_r_h_l_walk);
ds_grid_add(global.h_grid,0,7,s_r_h_r_walk);
//Squid
ds_grid_add(global.h_grid,1,0,s_s_h_d_idle);
ds_grid_add(global.h_grid,1,1,s_s_h_u_idle);
ds_grid_add(global.h_grid,1,2,s_s_h_l_idle);
ds_grid_add(global.h_grid,1,3,s_s_h_r_idle);
ds_grid_add(global.h_grid,1,4,s_s_h_d_walk);
ds_grid_add(global.h_grid,1,5,s_s_h_u_walk);
ds_grid_add(global.h_grid,1,6,s_s_h_l_walk);
ds_grid_add(global.h_grid,1,7,s_s_h_r_walk);
//Energy
ds_grid_add(global.h_grid,2,0,s_e_h_d_idle);
ds_grid_add(global.h_grid,2,1,s_e_h_u_idle);
ds_grid_add(global.h_grid,2,2,s_e_h_l_idle);
ds_grid_add(global.h_grid,2,3,s_e_h_r_idle);
ds_grid_add(global.h_grid,2,4,s_e_h_d_walk);
ds_grid_add(global.h_grid,2,5,s_e_h_u_walk);
ds_grid_add(global.h_grid,2,6,s_e_h_l_walk);
ds_grid_add(global.h_grid,2,7,s_e_h_r_walk);
//Bug
ds_grid_add(global.h_grid,3,0,s_b_h_d_idle);
ds_grid_add(global.h_grid,3,1,s_b_h_u_idle);
ds_grid_add(global.h_grid,3,2,s_b_h_l_idle);
ds_grid_add(global.h_grid,3,3,s_b_h_r_idle);
ds_grid_add(global.h_grid,3,4,s_b_h_d_walk);
ds_grid_add(global.h_grid,3,5,s_b_h_u_walk);
ds_grid_add(global.h_grid,3,6,s_b_h_l_walk);
ds_grid_add(global.h_grid,3,7,s_b_h_r_walk);
//Empty
ds_grid_add(global.h_grid,4,0,h_empty);

#endregion
#region Head Acc

global.ha_grid = ds_grid_create(5,8);
//Robot
ds_grid_add(global.ha_grid,0,0,s_r_ha_d_idle);
ds_grid_add(global.ha_grid,0,1,s_r_ha_u_idle);
ds_grid_add(global.ha_grid,0,2,s_r_ha_l_idle);
ds_grid_add(global.ha_grid,0,3,s_r_ha_r_idle);
ds_grid_add(global.ha_grid,0,4,s_r_ha_d_walk);
ds_grid_add(global.ha_grid,0,5,s_r_ha_u_walk);
ds_grid_add(global.ha_grid,0,6,s_r_ha_l_walk);
ds_grid_add(global.ha_grid,0,7,s_r_ha_r_walk);
//Squid
ds_grid_add(global.ha_grid,1,0,s_s_ha_d_idle);
ds_grid_add(global.ha_grid,1,1,s_s_ha_u_idle);
ds_grid_add(global.ha_grid,1,2,s_s_ha_l_idle);
ds_grid_add(global.ha_grid,1,3,s_s_ha_r_idle);
ds_grid_add(global.ha_grid,1,4,s_s_ha_d_walk);
ds_grid_add(global.ha_grid,1,5,s_s_ha_u_walk);
ds_grid_add(global.ha_grid,1,6,s_s_ha_l_walk);
ds_grid_add(global.ha_grid,1,7,s_s_ha_r_walk);
//Energy
ds_grid_add(global.ha_grid,2,0,s_e_ha_d_idle);
ds_grid_add(global.ha_grid,2,1,s_e_ha_u_idle);
ds_grid_add(global.ha_grid,2,2,s_e_ha_l_idle);
ds_grid_add(global.ha_grid,2,3,s_e_ha_r_idle);
ds_grid_add(global.ha_grid,2,4,s_e_ha_d_walk);
ds_grid_add(global.ha_grid,2,5,s_e_ha_u_walk);
ds_grid_add(global.ha_grid,2,6,s_e_ha_l_walk);
ds_grid_add(global.ha_grid,2,7,s_e_ha_r_walk);
//Bug
ds_grid_add(global.ha_grid,3,0,s_b_ha_d_idle);
ds_grid_add(global.ha_grid,3,1,s_b_ha_u_idle);
ds_grid_add(global.ha_grid,3,2,s_b_ha_l_idle);
ds_grid_add(global.ha_grid,3,3,s_b_ha_r_idle);
ds_grid_add(global.ha_grid,3,4,s_b_ha_d_walk);
ds_grid_add(global.ha_grid,3,5,s_b_ha_u_walk);
ds_grid_add(global.ha_grid,3,6,s_b_ha_l_walk);
ds_grid_add(global.ha_grid,3,7,s_b_ha_r_walk);
//Empty
ds_grid_add(global.ha_grid,4,0,ha_empty);

#endregion

enum spl_part {
	ll,
	rl,
	la,
	ra,
	t,
	ta,
	h,
	ha,
	noone
}

global.sel_spl_part = spl_part.noone;

enum spl_part_race {
	robot,
	squid,
	energy,
	bug,
	empty
}

global.sel_spl_part_race = spl_part_race.robot;

//Set default Splice parts to empty
global.ll_sprite = ds_grid_get(global.ll_grid, xx+4, yy);
global.rl_sprite = ds_grid_get(global.rl_grid, xx+4, yy);
global.la_sprite = ds_grid_get(global.la_grid, xx+4, yy);
global.ra_sprite = ds_grid_get(global.ra_grid, xx+4, yy);
global.t_sprite = ds_grid_get(global.t_grid, xx+4, yy);
global.ta_sprite = ds_grid_get(global.ta_grid, xx+4, yy);
global.h_sprite = ds_grid_get(global.h_grid, xx+4, yy);
global.ha_sprite = ds_grid_get(global.ha_grid, xx+4, yy);

