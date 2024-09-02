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
  bool swapped = false;
  for (int i = 0; i < TOTAL_CELLS; i++) {
    for (int j = 0; j < TOTAL_CELLS - i - 1; j++) {
      if (cells[j] > cells[j + 1]) {
        swapped = true;
        swap(cells[j], cells[j + 1]);
      }
      DrawCells(j, j + 1);
    }
    if (!swapped)
      break;
  }
}

void mergeSort(int l, int r) {
  if (l >= r) {
    return;
  }

  int mid = l + (r - l) / 2;

  mergeSort(l, mid);
  mergeSort(mid + 1, r);

  int start1 = l;
  int start2 = mid + 1;

  if (cells[mid] <= cells[start2]) {
    return;
  }

  while (start1 <= mid && start2 <= r) {
    if (cells[start1] <= cells[start2]) {
      start1++;
    } else {
      int value = cells[start2];
      int index = start2;

      while (index != start1) {
        cells[index] = cells[index - 1];
        index--;
      }
      cells[start1] = value;

      start1++;
      mid++;
      start2++;
    }
    DrawCells(min(start1, TOTAL_CELLS - 1), min(start2, TOTAL_CELLS - 1));
  }
}

int main() {
  srand(static_cast<unsigned int>(time(nullptr)));
  for (int i = 0; i < TOTAL_CELLS; i++) {
    cells[i] = generateCell();
    // cells[i] = 10 * i + MIN_CELL_HEIGHT;
  }
  cout << "Commence Sorting" << endl;
  InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "Sorting Visualizer");
  SetTargetFPS(15);

  // bubbleSort();
  mergeSort(0, TOTAL_CELLS - 1);

  CloseWindow();

  return 0;
}
