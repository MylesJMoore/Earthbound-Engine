varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = texture2D( gm_BaseTexture,v_vTexcoord) * v_vColour;
    gl_FragColor.rgb = vec3(sign(gl_FragColor.r-0.5),sign(gl_FragColor.g-0.5),sign(gl_FragColor.b-0.5));
}
