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
// Simple passthrough fragment shader
// Adapted for ease of use by Jeffrey Collins
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 in_Colour_actual;
uniform float pixelW;
uniform float pixelH;
uniform float spacing;

void main()
{
    // get actual color of the pixel
    vec4 actual_color = texture2D( gm_BaseTexture, v_vTexcoord );
    
    // get and convert passed-in color to a usable format
    float red = (in_Colour_actual.r/255.0);
    float green = (in_Colour_actual.g/255.0);
    float blue = (in_Colour_actual.b/255.0);
    float alpha = in_Colour_actual.a;
    vec3 Color = vec3(red,green,blue);
    
    // get pixel offsets
    vec2 offsetx = vec2(pixelW,0);
    vec2 offsety = vec2(0,pixelH);
    
    // perform operations on actual_color and such
    actual_color.rgb = Color;
    float x_pix = floor(v_vTexcoord.x/(spacing*pixelW));
    float y_pix = floor(v_vTexcoord.y/(spacing*pixelH));
    //if(mod(v_vTexcoord.y+(spacing*offsety), spacing) != 0.0){
    if(mod(x_pix,2.0) == mod(y_pix,2.0)){
        actual_color.a = 0.0;
    }
    
    // return the final color
    gl_FragColor = actual_color;
}
