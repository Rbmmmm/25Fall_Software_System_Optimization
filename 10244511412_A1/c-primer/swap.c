// Copyright (c) 2012 MIT License by 6.172 Staff

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

void swap(int* i, int* j) {
  int temp = *i;  // 读取指针 i 指向地址的值，存入 temp
  *i = *j;        // 读取指针 j 指向地址的值，存入指针 i 指向的地址
  *j = temp;      // 将 temp 的值，存入指针 j 指向的地址
}

int main() {
  int k = 1;
  int m = 2;

  swap(&k, &m);

  printf("k = %d, m = %d\n", k, m);

  return 0;
}