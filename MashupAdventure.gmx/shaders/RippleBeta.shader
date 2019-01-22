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
// Experimental water ripple fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 iResolution; // size of the view
uniform float iGlobalTime;
// add source texture
uniform sampler2D tex_water;

// settings
// amount of shifting (in one direction) as a fraction of screen size (0.00125 is subtle)
float xDistMag = 0.0125;
float yDistMag = 0.0;
// define pi so it stops complaining
float pi = 3.1415926535897932384626433;
// we get both up and down
float xSinCycles = 2.0*(pi);
float ySinCycles = 2.0*(pi);

void main(){

// editable coords so the compiler doesn't complain
vec2 fragCoordA = vec2(v_vTexcoord.x,v_vTexcoord.y);

// fit to the view
fragCoordA = fragCoordA.xy / iResolution.xy;

// inputs to sine:
// * the time (so it animates)
// * the y coord (if animating vertically)
float time = iGlobalTime;// * speed;
float xAngle = time + fragCoordA.y * ySinCycles;
float yAngle = time + fragCoordA.x * xSinCycles;
vec2 distortOffset = vec2(sin(xAngle),sin(yAngle))*vec2(xDistMag,yDistMag); //amount of shear * magniture adjust

// shear coords
fragCoordA += distortOffset;

// set color
gl_FragColor = texture2D(gm_BaseTexture, fragCoordA);
}
