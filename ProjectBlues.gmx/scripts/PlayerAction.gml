this_key = argument0;

if(this_key = action_inputs[0]){
    // dash
    obj_Player.move_speed = 250;
    obj_Player.dash_angle = point_direction(obj_Player.x,obj_Player.y,obj_Player.x-lengthdir_x(16,obj_Player.aim_angle),obj_Player.y-lengthdir_y(16,obj_Player.aim_angle));
    obj_Player.alarm[0] = 10;
    obj_Player.dashing = true;
}
if(this_key = action_inputs[1]){
    // slash
    var ind = instance_create(obj_Player.x, obj_Player.y, obj_PlayerAttack);
    ind.x = obj_Player.x-lengthdir_x(16,ind.staticAngle);
    ind.y = obj_Player.y-lengthdir_y(16,ind.staticAngle);
}
if(this_key = action_inputs[2]){
    // heal, but repurpose into aura boost
    if(obj_GlobalControl.sub_points >= 100){
        obj_Player.sprite_index = spr_PlayerBoost;
        obj_Player.transing = true;
        obj_GlobalControl.HP += 1;
        obj_GlobalControl.sub_points -= 100;
    }
}
