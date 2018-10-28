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
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 in_Colour_actual;

void main()
{
    vec4 actual_color = texture2D( gm_BaseTexture, v_vTexcoord );
    if(actual_color.a != 0.0){
        float red = (in_Colour_actual.r/255.0);
        float green = (in_Colour_actual.g/255.0);
        float blue = (in_Colour_actual.b/255.0);
        float alpha = in_Colour_actual.a;
        actual_color = vec4(red,green,blue,alpha);
    }
    gl_FragColor = actual_color;
}

