#pragma once

#include <SDL2/SDL.h>
#include <SDL2/SDL_events.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_timer.h>
#include <SDL2/SDL_video.h>
#include <cassert>
#include <cstdint>

namespace llp {

class sdl_instance final {
  int width;
  int height;
  int size;
  std::size_t frame_ticks;
  std::size_t ticks = 0;

  SDL_Window *window = nullptr;
  SDL_Renderer *renderer = nullptr;

public:
  sdl_instance(int width, int height, int size, std::size_t ticks)
      : width(width), height(height), size(size), frame_ticks(ticks) {
    SDL_Init(SDL_INIT_VIDEO);
    SDL_CreateWindowAndRenderer(width, height, /* flags */ 0, &window,
                                &renderer);
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 0);
    SDL_RenderClear(renderer);
  }

  void put_cell(int x, int y, int argb) {
    assert(x <= width);
    assert(y <= height);
    uint8_t a = argb >> 24;
    uint8_t r = (argb >> 16) & 0xFF;
    uint8_t g = (argb >> 8) & 0xFF;
    uint8_t b = argb & 0xFF;
    SDL_SetRenderDrawColor(renderer, r, g, b, a);
    auto rect = SDL_Rect{.x = x * size, .y = y * size, .w = size, .h = size};
    auto ret = SDL_RenderFillRect(renderer, &rect);
    assert(ret == 0);
    ticks = SDL_GetTicks();
  }

  void flush() {
    SDL_PumpEvents();
    assert(SDL_TRUE != SDL_HasEvent(SDL_QUIT));
    auto current_ticks = SDL_GetTicks() - ticks;
    if (current_ticks < frame_ticks)
      SDL_Delay(frame_ticks - current_ticks);
    SDL_RenderPresent(renderer);
  }

  ~sdl_instance() {
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
  }
};

} // namespace llp
