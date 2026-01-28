if array_length(global.controllers) > 0{
    leftstick_horiz = gamepad_axis_value(global.controllers[0], gp_axislh)
    leftstick_vertic = gamepad_axis_value(global.controllers[0], gp_axislv)
    lstick_angle = (point_direction(0, 0, leftstick_horiz, leftstick_vertic) div 45) * 45 //DO NOT REMOVE ANYTHING!!!
    
    right = false
    up = false
    left = false
    down = false
    //0 IS RIGHT, 90 IS UP, 180 IS LEFT, 270 IS DOWN
    if leftstick_horiz != 0 or leftstick_vertic != 0{
        
        if lstick_angle == 0{
            right = true
        } else if lstick_angle == 45{
            up = true
            right = true
        } else if lstick_angle == 90{
            up = true
        } else if lstick_angle == 135{
            up = true
            left = true
        } else if lstick_angle == 180{
            left = true
        } else if lstick_angle == 225{
            left = true
            down = true
        } else if lstick_angle == 270{
            down = true
        } else if lstick_angle == 315{
            down = true
            right = true
        }
    }
}

rightreleased = false
upreleased = false
leftreleased = false
downreleased = false

if leftstick_horiz == 0 and lstick_horiz_pressed == true{
    lstick_horiz_pressed = false
    if left {leftreleased = true}
    if right {rightreleased = true}
}
if leftstick_vertic == 0 and lstick_vertic_pressed == true{
    lstick_vertic_pressed = false
    if up {upreleased = true}
    if down {downreleased = true}
}
leftpressed = false
rightpressed = false
uppressed = false
downpressed = false

if leftstick_horiz != 0 and lstick_horiz_pressed == false{
    lstick_horiz_pressed = true
    if right{
        rightpressed = true
    } else if left{
        leftpressed = true
    }
}
if leftstick_vertic != 0 and lstick_vertic_pressed == false{
    lstick_vertic_pressed = true
    if up{
        uppressed = true
    } else if down{
        downpressed = true
    }
}