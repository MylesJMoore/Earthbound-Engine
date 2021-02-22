name_question[1] = "The name of the protagonist."
name_question[2] = "The name of the second party member."
name_question[3] = "The name of the third party member."
name_question[4] = "The name of the fourth party member."
food_question = "What's your favorite food?"
thing_question = "What's your favorite thing?"

if !global.gender {
    dontcare[1,0] = "Ian"
    dontcare[1,1] = "Kevin"
    dontcare[1,2] = "Luke"
    dontcare[1,3] = "Rick"
    dontcare[1,4] = "Thom"
    dontcare[1,5] = "Reimer"
    dontcare[1,6] = "Nick"
    dontcare[1,7] = "Kuroo"
} else {
    dontcare[1,0] = "Jane"
    dontcare[1,1] = "Tina"
    dontcare[1,2] = "Maria"
    dontcare[1,3] = "Eva"
    dontcare[1,4] = "Karin"
    dontcare[1,5] = "Asis"
    dontcare[1,6] = "Erika"
    dontcare[1,7] = "Shion"
}

dontcare[2,0] = "Luna"
dontcare[2,1] = "Light"
dontcare[2,2] = "Gaia"
dontcare[2,3] = "Holly"
dontcare[2,4] = "Athena"
dontcare[2,5] = "Selena"
dontcare[2,6] = "Neomia"
dontcare[2,7] = "Akari"

dontcare[3,0] = "Sybil"
dontcare[3,1] = "Aida"
dontcare[3,2] = "Paula"
dontcare[3,3] = "Mei"
dontcare[3,4] = "Nodame"
dontcare[3,5] = "Debbie"
dontcare[3,6] = "Mana"
dontcare[3,7] = "Eru"

dontcare[4,0] = "Quattro"
dontcare[4,1] = "Rick"
dontcare[4,2] = "William"
dontcare[4,3] = "Zen"
dontcare[4,4] = "Luke"
dontcare[4,5] = "Charles"
dontcare[4,6] = "Poo"
dontcare[4,7] = "Boney"

dontcare[5,0] = "Spaghetti"
dontcare[5,1] = "Burgers"
dontcare[5,2] = "Bread"
dontcare[5,3] = "Cake"
dontcare[5,4] = "Blood"
dontcare[5,5] = "Metal"
dontcare[5,6] = "Steak"
dontcare[5,7] = "Omelets"

dontcare[6,0] = "Cleaning"
dontcare[6,1] = "Gifts"
dontcare[6,2] = "Everything"
dontcare[6,3] = "Books"
dontcare[6,4] = "Money"
dontcare[6,5] = "Power"
dontcare[6,6] = "Rockin"
dontcare[6,7] = "Love"

x=44+v_offset
y=104
if !audio_is_playing(bgmYourNamePlease) {
    audio_stop_all()
    if !global.mute audio_play_sound(bgmYourNamePlease,1,1)
}

_x[1]  = x+8
_x[2]  = x+(3*8)
_x[3]  = x+(5*8)
_x[4]  = x+(7*8)
_x[5]  = x+(9*8)
_x[6]  = x+(11*8)
_x[7]  = x+(13*8)
_x[8]  = x+(15*8)
_x[9]  = x+(17*8)
_x[10] = x+(19*8)
_x[11] = x+(21*8)
_x[12] = x+(23*8)
_x[13] = x+(25*8)
_x[14] = x+(27*8)

_y[1]  = y+8
_y[2]  = y+(3*8)
_y[3]  = y+(5*8)
_y[4]  = y+(7*8)
_y[5]  = y+(9*8)
_y[6]  = y+(13*8)

capital = true

cursor_x = _x[1]
cursor_y = _y[1]
cursor_image_index = 0
cursor_timer = 0
inactive = false

char = ""
player = 1
the_string = ""
done = 0
dontcareindex = 0

