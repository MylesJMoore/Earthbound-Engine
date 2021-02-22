/// @description Invincibility blinking

if invincible {
    visible = !visible
    if ie(objPartyCharacter) { with objPartyCharacter { visible = !visible } }
    alarm[4] = 5
} else {
    visible = 1
    if ie(objPartyCharacter) { with objPartyCharacter { visible = 1 } }
}

