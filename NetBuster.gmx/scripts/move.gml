/// @arg speed
/// @arg direction
 
var spd = argument0;
var dir = argument1;
 
var xtarg = x+lengthdir_x(spd,dir);
var ytarg = y+lengthdir_y(spd,dir);
 
if(Navi.dashing){
    if(Navi.aim_angle > 90 && Navi.aim_angle <= 270){
        if(Navi.sprite_index != spr_DashR){
        Navi.sprite_index = spr_DashR;
        }
    }else{
        if(Navi.sprite_index != spr_DashL){
        Navi.sprite_index = spr_DashL;
        }
    }
}else{
    if(Navi.aim_angle > 90 && Navi.aim_angle <= 270){
        if(Navi.sprite_index != spr_WalkR){
        Navi.sprite_index = spr_WalkR;
        }
    }else{
        if(Navi.sprite_index != spr_WalkL){
        Navi.sprite_index = spr_WalkL;
        }
    }
}

if place_free(xtarg,ytarg) {
    x = xtarg;
    y = ytarg;
}
else {
    var sweep_interval = 10;
    
    for ( var angle = sweep_interval; angle <= 90; angle += sweep_interval) {
        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
            var angle_to_check = dir+angle*multiplier;
            xtarg = x+lengthdir_x(spd, angle_to_check);
            ytarg = y+lengthdir_y(spd, angle_to_check);     
            if place_free(xtarg,ytarg) {
                x = xtarg;
                y = ytarg;  
                exit;       
            }   
        }
    }
}