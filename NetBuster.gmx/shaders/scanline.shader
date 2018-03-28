//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Sprite outline shader
//
uniform vec4 in_Colour;                    // (r,g,b,a)
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
//uniform float texelSize;
//uniform float pixelW;
//varying vec4 shadeColor; 

void main()
{
  /*vec2 offsetx;
  offsetx.x = pixelW;
  vec2 offsety;
  offsety.y = pixelH;*/
  
  vec4 temp = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
  if(gl_FragColor.a == 1.0){ 
    temp = vec4(in_Colour.r, in_Colour.g, in_Colour.b, gl_FragColor.a);
  }
  if(mod(v_vTexcoord.y, 2.0) == 0.0){
  //if((offsety.y/2.0)-floor(offsety.y/2.0) == 0.0){//modulo test for lines
    temp.a = 0.0;
  }
  gl_FragColor = temp;
  //gl_FragColor.a = 0.0;
  
    //temp * (mod(v_vTexcoord.y, texelSize*2.0) * 1.0/texelSize);
    //gl_FragColor = temp;
}
