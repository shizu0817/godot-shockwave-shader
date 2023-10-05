shader_type canvas_item;

uniform sampler2D water_text: repeat_enable;
uniform vec4 color1: source_color = vec4(1.0);
uniform vec4 color2: source_color = vec4(1.0);


void fragment() {
	vec4 water_color1 = texture(water_text, UV - TIME * 0.01);
	vec4 water_color2 = texture(water_text, UV + 0.42 + TIME * vec2(0.01, 0.023));
	
	float t = min(water_color1.r, water_color2.r);
	COLOR = mix(color1, color2, t);
}