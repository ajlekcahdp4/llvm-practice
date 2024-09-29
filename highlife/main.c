#include "draw-c.h"

#include <assert.h>
#include <stdlib.h>

#define SCENE_SIZE 920
#define CELL_SIZE 10
#define NUM_CELLS (SCENE_SIZE / CELL_SIZE)
#define CENTER (NUM_CELLS / 2)

enum {
  kDead,
  kAlive,
  kBorn,
  kDied,
};

static unsigned count_neighbors(char cells[NUM_CELLS][NUM_CELLS], unsigned x,
                                unsigned y) {
  assert(cells[x][y] != kBorn && cells[x][y] != kDied);
  unsigned cnt = 0;
  int min_x = x ? -1 : 0;
  int min_y = y ? -1 : 0;
  int max_x = (x == NUM_CELLS - 1) ? 0 : 1;
  int max_y = (y == NUM_CELLS - 1) ? 0 : 1;
  for (int i = min_x; i <= max_x; ++i)
    for (int j = min_y; j <= max_y; ++j)
      if (cells[x + i][y + j] == kAlive || cells[x + i][y + j] == kDied)
        ++cnt;
  if (cells[x][y] == kAlive)
    --cnt;
  return cnt;
}

static void high_life(char cells[NUM_CELLS][NUM_CELLS]) {
  for (unsigned x = 0u; x < NUM_CELLS; ++x) {
    for (unsigned y = 0u; y < NUM_CELLS; ++y) {
      auto n_neighbors = count_neighbors(cells, x, y);
      if (cells[x][y] == kAlive) {
        if (n_neighbors != 2 && n_neighbors != 3)
          cells[x][y] = kDied;
      } else if (cells[x][y] == kDead) {
        if (n_neighbors == 3 || n_neighbors == 6)
          cells[x][y] = kBorn;
      } else
        abort();
    }
  }
  for (unsigned x = 0u; x < NUM_CELLS; ++x) {
    for (unsigned y = 0u; y < NUM_CELLS; ++y) {
      if (cells[x][y] == kBorn)
        cells[x][y] = kAlive;
      else if (cells[x][y] == kDied)
        cells[x][y] = kDead;
    }
  }
}

int main() {
  char cells[NUM_CELLS][NUM_CELLS] = {};
  cells[CENTER][CENTER + 1] = kAlive;
  cells[CENTER][CENTER + 2] = kAlive;
  cells[CENTER][CENTER + 3] = kAlive;
  cells[CENTER + 1][CENTER] = kAlive;
  cells[CENTER + 2][CENTER] = kAlive;
  cells[CENTER + 3][CENTER] = kAlive;

  init_sdl(SCENE_SIZE, SCENE_SIZE, CELL_SIZE, 50);
  for (int step = 0; step < 1000; ++step) {
    for (unsigned x = 0u; x < NUM_CELLS; ++x)
      for (unsigned y = 0u; y < NUM_CELLS; ++y)
        if (cells[x][y] == kAlive)
          put_cell(x, y, 0x00FFFFFF);
        else
          put_cell(x, y, 0x00000000);
    flush();
    high_life(cells);
  }
  destroy_sdl();
  return 0;
}
