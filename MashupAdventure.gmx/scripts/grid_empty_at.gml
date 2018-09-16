if(instance_exists(obj_TBS_Control)){
    var tempx = argument0;
    var tempy = argument1;
    if(obj_TBS_Control.grid_obj[tempy,tempx] == -1){
        return true;
    }else{
        return false;
    }
}
