//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float u_a;

void main()
{
    vec4 baseColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(baseColor.r*u_a,baseColor.g*u_a,baseColor.b*u_a,baseColor.a);
}
