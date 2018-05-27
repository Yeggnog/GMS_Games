//accept parameters
facing = argument0;
angle = argument1;
bouncing = argument2;
flips = argument3;
sprite = argument4;

//test for sprite
if(instance_exists(Surfer) && bouncing = 1){
    Surfer.sprite_index = sprite;
}

//operation
if(sprite == sprite4){

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

}else if(sprite == sprite3){

switch(angle){
case 0:
    Surfer.image_index = 0;
break;

case 60:
    Surfer.image_index = 1;
break;

case 120:
    Surfer.image_index = 2;
break;

case 180:
    Surfer.image_index = 3;
break;

case 240:
    Surfer.image_index = 4;
break;

case 300:
    Surfer.image_index = 5;
break;

case 360:
    image_index = 6;
    Surfer.animbuffer = 0;
    Surfer.flips ++;
    Surfer.subpts += 50;
break;
}

}
