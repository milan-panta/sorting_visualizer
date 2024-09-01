#include <iostream>
#include <raylib.h>
#include <vector>

using namespace std;

const int SCREEN_HEIGHT = 800;
const int SCREEN_WIDTH = 1220;
const int PADDING = 10;
const int CELL_WIDTH = 25;
const int MIN_CELL_HEIGHT = 50;
const int TOTAL_CELLS = SCREEN_WIDTH / CELL_WIDTH;

class Cell {
public:
  int height;
  int x;
  int y;

  void Draw() { DrawRectangle(x, y, CELL_WIDTH, height, WHITE); }
};

Cell generateCell(int i) {
  Cell r;
  r.height = rand() % (SCREEN_HEIGHT - MIN_CELL_HEIGHT - PADDING * 2) +
             MIN_CELL_HEIGHT;
  r.x = CELL_WIDTH * i + PADDING;
  r.y = SCREEN_HEIGHT - r.height - PADDING;
  return r;
}

vector<Cell> cells(TOTAL_CELLS);

void swapCells(Cell &a, Cell &b) {
  Cell tmp = a;
  a.height = b.height;
  a.x = b.x;
  a.y = b.y;
  b.height = tmp.height;
  b.x = tmp.x;
  b.y = tmp.y;
}

void bubbleSort() {
  for (int i = 0; i < TOTAL_CELLS; i++) {
    for (int j = 0; j < TOTAL_CELLS - i - 1; j++) {
      if (cells[j].height > cells[j + 1].height) {
        swapCells(cells[i], cells[i + 1]);
        swap(cells[i], cells[i + 1]);
      }
    }
  }
}

int main() {
  for (int i = 0; i < TOTAL_CELLS; i++) {
    cells[i] = generateCell(i);
  }
  cout << "Commence Sorting" << endl;
  InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "Sorting Visualizer");
  SetTargetFPS(60);

  while (WindowShouldClose() == false) {
    BeginDrawing();

    ClearBackground(BLACK);
    for (int i = 0; i < TOTAL_CELLS; i++) {
      cells[i].Draw();
    }
    EndDrawing();
  }

  CloseWindow();

  return 0;
}
