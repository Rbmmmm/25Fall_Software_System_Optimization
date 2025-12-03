/**
 * Copyright (c) 2012 MIT License by 6.172 Staff
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 **/


#include "./util.h"

#define COARSEN_THRESHOLD 16

static void merge_c(data_t* A, int p, int q, int r);
static void copy_c(data_t* source, data_t* dest, int n);
static void bubble_sort(data_t* A, int p, int r);

void sort_c(data_t* A, int p, int r) {
  assert(A);
  
  int len = r - p + 1;

  if (len <= COARSEN_THRESHOLD) {
      bubble_sort(A, p, r);
  } 
  else if (p < r) {
    int q = (p + r) / 2;
    sort_c(A, p, q);
    sort_c(A, q + 1, r);
    merge_c(A, p, q, r);
  }
}

static void bubble_sort(data_t* A, int p, int r) {
    int len = r - p + 1;
    for (int i = 0; i < len - 1; i++) {
        for (int j = p; j < r - i; j++) {
            if (A[j] > A[j+1]) {
                data_t temp = A[j];
                A[j] = A[j+1];
                A[j+1] = temp;
            }
        }
    }
}

static void merge_c(data_t* A, int p, int q, int r) {
  assert(A);
  assert(p <= q);
  assert((q + 1) <= r);
  int n1 = q - p + 1;
  int n2 = r - q;

  data_t* left = 0, * right = 0;
  mem_alloc(&left, n1 + 1);
  mem_alloc(&right, n2 + 1);
  if (left == NULL || right == NULL) {
    mem_free(&left);
    mem_free(&right);
    return;
  }

  copy_c(A + p, left, n1);
  copy_c(A + q + 1, right, n2);

  *(left + n1) = UINT_MAX;
  *(right + n2) = UINT_MAX;

  data_t *l_ptr = left;
  data_t *r_ptr = right;
  data_t *dest_ptr = A + p;

  for (int k = p; k <= r; k++) {
    if (*l_ptr <= *r_ptr) {
      *dest_ptr = *l_ptr;
      l_ptr++;
    } else {
      *dest_ptr = *r_ptr;
      r_ptr++;
    }
    dest_ptr++;
  }

  mem_free(&left);
  mem_free(&right);
}

static void copy_c(data_t* source, data_t* dest, int n) {
  assert(dest);
  assert(source);
  
  data_t* source_end = source + n;
  while (source < source_end) {
    *dest++ = *source++;
  }
}
