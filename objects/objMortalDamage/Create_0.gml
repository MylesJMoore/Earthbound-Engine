i[0]  = __view_get( e__VW.YView, 0 )-75

for (var r=1; r<17; r++) {
    i[r] = iff(r%2 == 0,-(i[r-1] - 10),-(i[r-1]))
}

__view_set( e__VW.YView, 0, i[0] )
timer = 0
u = 0

image_alpha=0.8
image_speed=0.5
x=-100
y=-100
image_xscale=1000
image_yscale=1000

audio_play_sound(sndmhit,0,0)

