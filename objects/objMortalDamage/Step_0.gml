if u<16 {
   timer +=1
} else {
   timer = 0
}

if timer = 2 {
    timer = 0
    u += 1
    __view_set( e__VW.YView, 0, i[u] )
}

if __view_get( e__VW.YView, 0 ) = i[16] {
    u = 0
    __view_set( e__VW.YView, 0, 0 )
    instance_destroy()
}

