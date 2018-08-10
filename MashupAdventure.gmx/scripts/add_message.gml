// adds a message to the 'point n' click' message box
if(instance_exists(obj_PNC_MessageBox)){
    // lock keyboard controls
    obj_PNC_MessageBox.text_actual += argument0;
    obj_PNC_MessageBox.draw_box = true;
}
