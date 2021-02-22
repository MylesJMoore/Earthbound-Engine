if image_alpha>0
{
    alarm[1] = 10
    image_alpha -=0.05
}
else
{
    instance_destroy()
}

