application_surface_draw_enable(1);
bloomIntensity = shader_get_uniform(shdr_bloom, "intensity");
bloomblurSize = shader_get_uniform(shdr_bloom, "blurSize");

global.shaders = 1