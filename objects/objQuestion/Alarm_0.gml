_y[1] = __view_get( e__VW.YView, 0 )+241-8*(2*choices+1)+(choices = 3)+2*(choices = 4)+3*(choices = 5)

if draw_top {
    _y[1] = __view_get( e__VW.YView, 0 )+12
} else {
    _y[1] = __view_get( e__VW.YView, 0 )+241-8*(2*choices+1)+(choices = 3)+2*(choices = 4)+3*(choices = 5)
}

_y[2] = _y[1]+14
_y[3] = _y[2]+14
_y[4] = _y[3]+14
_y[5] = _y[4]+14
cursor_y = _y[1]
ok = 1
visible = 1

