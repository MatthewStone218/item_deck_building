/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
shader_set(shd_white_add);
shader_set_uniform_f(shader_get_uniform(shd_white_add,"u_a"),1);
gpu_set_blendmode(bm_add);
image_xscale *= scale;
image_yscale *= scale;
draw_self();
image_xscale /= scale;
image_yscale /= scale;
draw_sprite_ext(spr_window_4,0,x,bbox_top,2*scale,2*scale,0,c_white,white);
draw_sprite_ext(spr,-1,x-sprite_get_width(spr)*2,bbox_top-sprite_get_height(spr)*2,4*scale,4*scale,0,c_white,white);

gpu_set_blendmode(bm_normal)
shader_reset();