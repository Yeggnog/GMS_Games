//arguments
shakex = argument0;
shakey = argument1;
span = argument2;
shaking = true;

//other variables
prevx = object10.x;
prevy = object10.x;
i = 0;
xdev = random_range((-1*shakex), shakex);
ydev = random_range((-1*shakey), shakey);

//update view dimensions
object10.x = object10.x + 2*xdev;
object10.y = object10.y + 2*ydev;

//wait a certain number of ticks
while(i < span){
    i++;
}

//reset
/*
object10.x = prevx;
object10.y = prevy;
*/
object10.x -= xdev;
object10.y -= ydev;
shaking = false;