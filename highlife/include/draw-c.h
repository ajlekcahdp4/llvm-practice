#pragma once

#ifdef __cplusplus
extern "C" {
#endif
void init_sdl(int width, int height, int size, unsigned ticks);

void destroy_sdl();

void put_cell(int x, int y, int argb);

void flush();
#ifdef __cplusplus
}
#endif
