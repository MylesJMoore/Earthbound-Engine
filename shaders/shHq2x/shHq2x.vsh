/*
** HQ2X Vertex Shader
*/
attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec4 v_vTexcoord[5];
varying vec4 v_vColour;

void main()
{
    //Set the view height and width here!
    float x = 0.5 * (1.0 / 384.0);
    float y = 0.5 * (1.0 / 216.0);
    vec2 dg1 = vec2( x, y);
    vec2 dg2 = vec2(-x, y);
    vec2 dx = vec2(x, 0.0);
    vec2 dy = vec2(0.0, y);
    
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y , in_Position.z, 1.0);
    
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    v_vTexcoord[0].xy = in_TextureCoord;
    v_vTexcoord[1].xy = v_vTexcoord[0].xy - dg1;
    v_vTexcoord[1].zw = v_vTexcoord[0].xy - dy;
    v_vTexcoord[2].xy = v_vTexcoord[0].xy - dg2;
    v_vTexcoord[2].zw = v_vTexcoord[0].xy + dx;
    v_vTexcoord[3].xy = v_vTexcoord[0].xy + dg1;
    v_vTexcoord[3].zw = v_vTexcoord[0].xy + dy;
    v_vTexcoord[4].xy = v_vTexcoord[0].xy + dg2;
    v_vTexcoord[4].zw = v_vTexcoord[0].xy - dx;
    
    v_vColour=in_Colour;
}
