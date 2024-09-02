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
        swap(cells[j], cells[j + 1]);
        DrawCells(j, j + 1);
      }
    }
  }
}

void mergeSort(int l, int r) {
  if (l == r) {
    return;
  }
  if (l == r - 1) {
    if (cells[l] > cells[r]) {
      swap(cells[l], cells[r]);
      DrawCells(l, r);
    }
  }
  int mid = l + (r - l) / 2;
  mergeSort(l, mid);
  mergeSort(mid, r);
  int start2 = mid + 1;

  if (cells[mid] <= cells[start2]) {
    return;
  }

  while (l <= mid && start2 <= r) {
    if (cells[l] <= cells[start2]) {
      l++;
    } else {
      int value = cells[start2];
      int index = start2;

      while (index != l) {
        cells[index] = cells[index - 1];
        index--;
      }
      cells[l] = value;

      l++;
      mid++;
      start2++;
    }
  }
}

int main() {
  srand(static_cast<unsigned int>(time(nullptr)));
  for (int i = 0; i < TOTAL_CELLS; i++) {
    cells[i] = generateCell();
  }
  cout << "Commence Sorting" << endl;
  InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "Sorting Visualizer");
  SetTargetFPS(10);

  bubbleSort();
  // mergeSort(0, TOTAL_CELLS);

  CloseWindow();

  return 0;
}
