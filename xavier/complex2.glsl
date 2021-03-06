uniform float time;
uniform vec2 mouse;
uniform vec2 screen;

void main() {
	vec2 z = gl_FragCoord.xy - screen*0.5;
	z /= 100.0;

	float r = length(z);
	float t = atan(z.y, z.x);

	t += time/10000.0;

	//float change = (mouse.x - screen.x/2.0)*0.01;
	float change = time*0.001;
	//r += change;

	float rinv = 1.0/r;
	float tinv = -t;
	
	vec2 zinv = rinv*vec2(cos(tinv), sin(tinv));
	zinv.y += change;
	zinv.x += change*0.33;

	vec2 modded = mod(zinv, 1.0);

	vec2 warped = sin(modded*2.0*3.14159);

	gl_FragColor = vec4(pow(warped.x,32.0), pow(warped.y, 32.0), 0.0, 1.0);
}



