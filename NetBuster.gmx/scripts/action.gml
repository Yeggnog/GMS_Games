this_key = argument0;

if(this_key = Navi.action_inputs[0]){
    Navi.move_speed = 250;
    Navi.dash_angle = point_direction(Navi.x,Navi.y,Navi.x-lengthdir_x(16,Navi.aim_angle),Navi.y-lengthdir_y(16,Navi.aim_angle));
    Navi.alarm[0] = 10;
    Navi.dashing = true; //dashing
}
if(this_key = Navi.action_inputs[1]){
    var ind = instance_create(Navi.x, Navi.y, Slash);
    ind.x = Navi.x-lengthdir_x(16,ind.staticAngle);
    ind.y = Navi.y-lengthdir_y(16,ind.staticAngle);
}
if(this_key = Navi.action_inputs[2]){
    if(Navi.sub_points >= 100){
        Navi.HP += 1;
        Navi.sub_points -= 100;
    }
}
