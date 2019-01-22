var neko = argument0;
var last_input = argument1;
for(var i=0; i<4; i++){
    if(neko.combo_prog < array_length_2d(neko.combos,i)){
        if(combos[i,neko.combo_prog] != last_input){
            neko.combo_options[i] = false;
        }
    }
}
/*if(neko.combo_prog > 1){
    neko.combo_options[2] = false;
    neko.combo_options[3] = false;
}
if(neko.combo_prog > 2){
    neko.combo_options[1] = false;
}*/
