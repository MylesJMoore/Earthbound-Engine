/*
** HQ4X Fragment Shader
*/
varying vec4 v_vTexcoord[7];
varying vec4 v_vColour;

void main()
{
    gl_FragColor = vec4(1.0);
    
    vec3 c  = texture2D(gm_BaseTexture, v_vTexcoord[0].xy).xyz;
    vec3 i1 = texture2D(gm_BaseTexture, v_vTexcoord[1].xy).xyz; 
    vec3 i2 = texture2D(gm_BaseTexture, v_vTexcoord[2].xy).xyz; 
    vec3 i3 = texture2D(gm_BaseTexture, v_vTexcoord[3].xy).xyz; 
    vec3 i4 = texture2D(gm_BaseTexture, v_vTexcoord[4].xy).xyz; 
    vec3 o1 = texture2D(gm_BaseTexture, v_vTexcoord[5].xy).xyz; 
    vec3 o3 = texture2D(gm_BaseTexture, v_vTexcoord[6].xy).xyz; 
    vec3 o2 = texture2D(gm_BaseTexture, v_vTexcoord[5].zw).xyz;
    vec3 o4 = texture2D(gm_BaseTexture, v_vTexcoord[6].zw).xyz;
    vec3 s1 = texture2D(gm_BaseTexture, v_vTexcoord[1].zw).xyz; 
    vec3 s2 = texture2D(gm_BaseTexture, v_vTexcoord[2].zw).xyz; 
    vec3 s3 = texture2D(gm_BaseTexture, v_vTexcoord[3].zw).xyz; 
    vec3 s4 = texture2D(gm_BaseTexture, v_vTexcoord[4].zw).xyz;  
    vec3 dt = vec3(1.0,1.0,1.0);
    
    float ko1=dot(abs(o1-c),dt);
    float ko2=dot(abs(o2-c),dt);
    float ko3=dot(abs(o3-c),dt);
    float ko4=dot(abs(o4-c),dt);
    
    float k1=min(dot(abs(i1-i3),dt),max(ko1,ko3));
    float k2=min(dot(abs(i2-i4),dt),max(ko2,ko4));
    
    float w1 = k2; if(ko3<ko1) w1*=ko3/ko1;
    float w2 = k1; if(ko4<ko2) w2*=ko4/ko2;
    float w3 = k2; if(ko1<ko3) w3*=ko1/ko3;
    float w4 = k1; if(ko2<ko4) w4*=ko2/ko4;
    
    c=(w1*o1+w2*o2+w3*o3+w4*o4+0.001*c)/(w1+w2+w3+w4+0.001);
    
    w1 = -1.10*dot(abs(i1-c)+abs(i3-c),dt)/(0.125*dot(i1+i3,dt)+0.33);
    w2 = -1.10*dot(abs(i2-c)+abs(i4-c),dt)/(0.125*dot(i2+i4,dt)+0.33);
    w3 = -1.10*dot(abs(s1-c)+abs(s3-c),dt)/(0.125*dot(s1+s3,dt)+0.33);
    w4 = -1.10*dot(abs(s2-c)+abs(s4-c),dt)/(0.125*dot(s2+s4,dt)+0.33);
    
    w1 = clamp(w1+1.00,0.03,0.75); 
    w2 = clamp(w2+1.00,0.03,0.75);
    w3 = clamp(w3+1.00,0.03,0.75); 
    w4 = clamp(w4+1.00,0.03,0.75);
    
    gl_FragColor.xyz=(w1*(i1+i3)+w2*(i2+i4)+w3*(s1+s3)+w4*(s2+s4)+c)/(2.0*(w1+w2+w3+w4)+1.0);
}
