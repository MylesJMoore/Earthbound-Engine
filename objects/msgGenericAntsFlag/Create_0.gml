/// @description Blocks your way and disappears if a certain flag has a certain value
active = 0;
_flag = -1;         // If this flag...
flag_state = 1;     // <- ...has this value then the object will be destroyed when it's created on room start
flag_set = -1;      // Set this flag...
flag_set_state = 1; // <- ...to this value when the message is triggered
sound = 0;          // Play this sound when the message is triggered
destroy = 0;        // Destroy this object when the message is triggered

for (var i=0;i<=20;i++) {
    msg[i] = ""
    name[i] = ""
}

