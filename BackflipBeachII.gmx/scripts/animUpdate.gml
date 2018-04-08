//accept parameters
facing = argument0;
angle = argument1;
bouncing = argument2;
flips = argument3;

//test for sprite
if(instance_exists(Surfer) && bouncing = 1){
    //if(facing = 0){
    //Surfer.sprite_index = sprite3;
    //}
    //if(facing = 180){
    Surfer.sprite_index = sprite4;
    //}
}

//operation
switch(angle){
case 0:
    Surfer.image_index = 0;
break;

case 90:
    Surfer.image_index = 1;
break;

case 135:
    Surfer.image_index = 2;
break;

case 180:
    Surfer.image_index = 3;
break;

case 225:
    Surfer.image_index = 4;
break;

case 270:
    Surfer.image_index = 5;
break;

case 315:
    Surfer.image_index = 6;
break;

case 360:
    image_index = 7;
    Surfer.animbuffer = 0;
    Surfer.flips ++;
    Surfer.subpts += 150;
break;
}
