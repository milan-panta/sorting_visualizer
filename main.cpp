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

int generateCell() {
  int height = rand() % (SCREEN_HEIGHT - MIN_CELL_HEIGHT - PADDING * 2) +
               MIN_CELL_HEIGHT;
  return height;
}

vector<int> cells(TOTAL_CELLS);

void DrawCells(int a, int b) {
  // draw cells with a, b being most recent swaps
  BeginDrawing();
  ClearBackground(BLACK);
  for (int i = 0; i < TOTAL_CELLS; i++) {
    DrawRectangle(PADDING + i * CELL_WIDTH, SCREEN_HEIGHT - cells[i] - PADDING,
                  CELL_WIDTH, cells[i], i == a || i == b ? RED : WHITE);
  }
  EndDrawing();
}

void bubbleSort() {
  for (int i = 0; i < TOTAL_CELLS; i++) {
    for (int j = 0; j < TOTAL_CELLS - i - 1; j++) {
      if (cells[j] > cells[j + 1]) {
        DrawCells(j, j + 1);
        swap(cells[j], cells[j + 1]);
      }
    }
  }
}

int main() {
  for (int i = 0; i < TOTAL_CELLS; i++) {
    cells[i] = generateCell();
  }
  cout << "Commence Sorting" << endl;
  InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "Sorting Visualizer");
  SetTargetFPS(60);

  while (WindowShouldClose() == false) {
    bubbleSort();
  }

  CloseWindow();

  return 0;
}
