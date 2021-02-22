var a,b;
a = instance_create(x,y,objButterflyGet)
a.image_xscale = image_xscale

for (var i=1;i<global.pl_count+1;i++){
    if global.s_hp[i]+20 > global.s_hpmax[i] { global.s_hp[i] = global.s_hpmax[i]; } else { global.s_hp[i] += 20; }
    if global.s_pp[i]+20 > global.s_ppmax[i] { global.s_pp[i] = global.s_ppmax[i]; } else { global.s_pp[i] += 20; }
}

instance_destroy()

