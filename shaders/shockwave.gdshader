shader_type canvas_item;

uniform sampler2D screen_texture: hint_screen_texture;
uniform vec2 center = vec2(0.5);
uniform float size = 0.2;
uniform float width = 0.1;
uniform float intensity = 0.1;
uniform float chromatic_offset = 0;

void fragment() {
	vec2 uv = SCREEN_UV - center;
	float ratio = SCREEN_PIXEL_SIZE.x / SCREEN_PIXEL_SIZE.y;
	uv.y *= ratio;
	float uv_length = length(uv);

	float ring_mask = smoothstep(size-width, size, uv_length) * 
		(1.0 - smoothstep(size, size+width, uv_length));

	vec2 offset = intensity * ring_mask * -normalize(uv);
	
	vec4 screen_color = texture(screen_texture, SCREEN_UV + offset);
	screen_color.r = texture(screen_texture, SCREEN_UV + offset + chromatic_offset*ring_mask).r;
	screen_color.b = texture(screen_texture, SCREEN_UV + offset - chromatic_offset*ring_mask).b;
	COLOR = screen_color;
}
