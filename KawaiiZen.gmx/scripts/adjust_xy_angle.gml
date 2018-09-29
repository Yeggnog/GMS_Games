/* params:
 * (x,y), angle, angle pivot(x,y)
*/

// set up
var arr;
arr[0] = argument0;
arr[1] = argument1;

// shortstop
if(angle_pivot_x == 0 && angle_pivot_y == 0){
    return arr;
}

// get distance to origin
var xdist = abs(angle_pivot_x);
var ydist = abs(angle_pivot_y);
var absdist = sqrt(power(xdist,2)+power(ydist,2));

// adjust x / y
arr[0] += lengthdir_x(absdist,angle);
arr[1] += lengthdir_y(absdist,angle);

// return
return arr;
