back = 0;               // Sprite index
alpha = 1;              // Sprite transparency
phaseoffset = 0;        // Increased by phaserate every step to create wave movement 
phaserate = 1;          // Speed of wave movement
frequency = 50;         // Density of waves
amplitude = 5;          // Intensity of waves
offsetx = 100;          // Horizontal offset
offsety = 55;           // Vertical offset
speedx = 2.5;           // Horizontal speed
speedy = -0.5;          // Vertical speed
tr_offsetx = 0;         // Increased by speedx every step to create translation
tr_offsety = 0;         // Increased by speedy every step to create translation
sourcex = 0;
sourcey = 0;
effect = 0;             // 0: Sine, 1: VerComp, 2: HorComp (incomplete) 3: Sine+VerComp
scanline = 0;           // Scanline effect. 0: None, 1: Draw even lines, 2: Draw odd lines
width = __view_get( e__VW.WView, 0 );  // Width of screen port
height = __view_get( e__VW.HView, 0 ); // Height of screen port
image_speed = 0.1;      // Animation speed
surf = surface_create(room_width*2,room_height*2); // Background surface

//Debug
bgg = 0;
custom = 0;

