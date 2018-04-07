//accept parameters
facing = argument0;
buffer = argument1;
bouncing = argument2;
flips = argument3;

//test for sprite
if(instance_exists(Surfer) && bouncing = 1){
    if(facing = 0){
    Surfer.sprite_index = sprite3;
    }
    if(facing = 180){
    Surfer.sprite_index = sprite4;
    }
}

//operation
switch(buffer){
case 10:
Surfer.image_index = 1;
break;

case 20:
Surfer.image_index = 2;
break;

case 30:
Surfer.image_index = 3;
break;

case 40:
Surfer.image_index = 4;
break;

case 50:
Surfer.image_index = 5;
break;

case 60:
Surfer.image_index = 6;
break;

case 70:
image_index = 7;
Surfer.animbuffer = 0;
Surfer.flips ++;
if(Surfer.sprite_index = sprite3){
Surfer.subpts += 150;
}else if(Surfer.sprite_index = sprite4){
Surfer.subpts += 100;
}
break;
}
