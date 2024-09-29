#include "draw-c.h"

#include "sdl-wrapper.hpp"

#include <memory>

static std::unique_ptr<llp::sdl_instance> instance;

void init_sdl(int width, int height, int size, unsigned int ticks) {
  instance = std::make_unique<llp::sdl_instance>(width, height, size, ticks);
}

void destroy_sdl() { instance.reset(); }

void put_cell(int x, int y, int argb) { instance->put_cell(x, y, argb); }

void flush() { instance->flush(); }
