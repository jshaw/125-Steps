uniform float time;
uniform vec2 mouse;
uniform vec2 screen;

vec3 concentric(vec2 center, float scale) {
	vec2 screenCoord = gl_FragCoord.xy;
	vec2 delta = screenCoord - center;
	float r = length(delta);
	//float theta = atan2(delta.y, delta.x);
	float s = 0.5 * (sin(r/scale) + 1.0);
	return vec3(s, s, s);
}

void main() {
	float scale = (mouse.y - screen.y/2.0)/10.0 + 2.0;
	float circR = abs(mouse.x - screen.x/2.0)/1000.0;

	vec2 scaledCoord = (gl_FragCoord.xy - screen/2.0)/scale;
	// Rotate
	float theta = time/5000.0;
	scaledCoord = vec2(scaledCoord.x*cos(theta) + scaledCoord.y*sin(theta),
			-scaledCoord.x*sin(theta) + scaledCoord.y*cos(theta));
	
	vec2 internalCoord = mod(scaledCoord, 1.0);
	vec2 externalCoord = floor(scaledCoord);

	float r = length(internalCoord-0.5);
	float b = (r-circR)*scale; // for aliasing
	b = 1.0 - clamp(b, 0.0, 1.0);
	gl_FragColor = vec4(b, b, b, 1.0);
}

