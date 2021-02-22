varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord);
    vec3 lum = vec3(0.299, 0.587, 0.114);
    float gray = dot(col.xyz, lum);
    gl_FragColor = vec4(gray, gray, gray, col.w);
}
