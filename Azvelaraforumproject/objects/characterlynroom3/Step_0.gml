/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B933A98
/// @DnDArgument : "code" "/// platform physics$(13_10) $(13_10)var rkey = keyboard_check(ord("D"));$(13_10)var lkey = keyboard_check(ord("A"));$(13_10)var jkey = keyboard_check_pressed(ord("W"));$(13_10) $(13_10)// Check for ground$(13_10)if (place_meeting(x, y+1, obj_solid)) {$(13_10)    airjump = 1;$(13_10)    vspd = 0;$(13_10)   $(13_10)    // Jumping$(13_10)    if (jkey) {$(13_10)        vspd = -jspd;$(13_10)    }$(13_10)} else {$(13_10)    //Gravity$(13_10)    if (vspd < 100000000000000){$(13_10)        vspd += grav;$(13_10)        }$(13_10)       $(13_10)        if(keyboard_check_released(ord("W")) && vspd <-6) {$(13_10)            vspd = -6;$(13_10)        }$(13_10) $(13_10)        //Check for airjump$(13_10)        if (airjump > 0){$(13_10)            if (jkey) {$(13_10)            vspd = -jspd;$(13_10)            airjump -= 1;$(13_10)            }$(13_10)        }$(13_10)}          $(13_10) $(13_10)       $(13_10)// Moving right$(13_10)if (rkey) {$(13_10)    hspd = spd$(13_10)}$(13_10) $(13_10)// Moving left$(13_10)if (lkey) {$(13_10)    hspd = -spd;$(13_10)}$(13_10) $(13_10)// Check for not moving$(13_10)if ((!lkey && !rkey) || (rkey && lkey)) {$(13_10)    hspd = 0;$(13_10)}$(13_10) $(13_10)// Horizontal collisions$(13_10)if (place_meeting(x+hspd, y, obj_solid)) {$(13_10)    while (!place_meeting(x+sign(hspd), y, obj_solid)) {$(13_10)    x += sign(hspd);$(13_10)    }$(13_10)    hspd = 0;$(13_10)}$(13_10) $(13_10)//Move horizontally$(13_10)x += hspd;$(13_10) $(13_10)// Verical collisions$(13_10)if (place_meeting(x, y+vspd, obj_solid)) {$(13_10)    while (!place_meeting(x, y+sign(vspd), obj_solid)) {$(13_10)    y += sign(vspd);$(13_10)    }$(13_10)    vspd = 0;$(13_10)}$(13_10)// Move vertically$(13_10)y += vspd;$(13_10)$(13_10)$(13_10)//maybe gravity$(13_10)"
/// platform physics
 
var rkey = keyboard_check(ord("D"));
var lkey = keyboard_check(ord("A"));
var jkey = keyboard_check_pressed(ord("W"));
 
// Check for ground
if (place_meeting(x, y+1, obj_solid)) {
    airjump = 1;
    vspd = 0;
   
    // Jumping
    if (jkey) {
        vspd = -jspd;
    }
} else {
    //Gravity
    if (vspd < 100000000000000){
        vspd += grav;
        }
       
        if(keyboard_check_released(ord("W")) && vspd <-6) {
            vspd = -6;
        }
 
        //Check for airjump
        if (airjump > 0){
            if (jkey) {
            vspd = -jspd;
            airjump -= 1;
            }
        }
}          
 
       
// Moving right
if (rkey) {
    hspd = spd
}
 
// Moving left
if (lkey) {
    hspd = -spd;
}
 
// Check for not moving
if ((!lkey && !rkey) || (rkey && lkey)) {
    hspd = 0;
}
 
// Horizontal collisions
if (place_meeting(x+hspd, y, obj_solid)) {
    while (!place_meeting(x+sign(hspd), y, obj_solid)) {
    x += sign(hspd);
    }
    hspd = 0;
}
 
//Move horizontally
x += hspd;
 
// Verical collisions
if (place_meeting(x, y+vspd, obj_solid)) {
    while (!place_meeting(x, y+sign(vspd), obj_solid)) {
    y += sign(vspd);
    }
    vspd = 0;
}
// Move vertically
y += vspd;


//maybe gravity