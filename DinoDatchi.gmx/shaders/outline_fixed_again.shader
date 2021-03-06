//
// Passthrough vertex shader
// Simpler system by Jeffrey Collins
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
// Passthrough fragment shader
// Simpler system by Jeffrey Collins
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float surface_width;
uniform float surface_height;

void main()
{
    // get x and y of current pixel
    float pixelX = v_vTexcoord.x * surface_width;
    float pixelY = v_vTexcoord.y * surface_height;
    
    // get r,g,b,a of current pixel
    float R = texture2D(gm_BaseTexture, v_vTexcoord).r;
    float G = texture2D(gm_BaseTexture, v_vTexcoord).g;
    float B = texture2D(gm_BaseTexture, v_vTexcoord).b;
    float A = texture2D(gm_BaseTexture, v_vTexcoord).a;
    
    // put code / modifications here
    //A = max(A, texture2D(gm_BaseTexture, v_vTexcoord+(1.0/surface_width)).a);
    //A = max(A, texture2D(gm_BaseTexture, v_vTexcoord-(1.0/surface_width)).a);
    //A = max(A, texture2D(gm_BaseTexture, v_vTexcoord+(1.0/surface_height)).a);
    //A = max(A, texture2D(gm_BaseTexture, v_vTexcoord-(1.0/surface_height)).a);
    if(A > 0.0){
        A = 1.0;
    }
    
    // 'return' edited pixel
    vec4 newColor;
    newColor.r = R;
    newColor.g = G;
    newColor.b = B;
    newColor.a = A;
    gl_FragColor = newColor * texture2D( gm_BaseTexture, v_vTexcoord );
}

