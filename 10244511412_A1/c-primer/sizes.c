// Copyright (c) 2012 MIT License by 6.172 Staff

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// 定义一个宏，用于打印一个类型的大小和指向该类型的指针的大小。
#define PRINT_SIZES(type) \
    printf("size of %-20s: %zu bytes\n", #type, sizeof(type)); \
    printf("size of pointer to %-9s: %zu bytes\n", #type, sizeof(type*)); \
    printf("\n");


// student 结构体
typedef struct {
  int id;
  int year;
} student;


int main() {

  PRINT_SIZES(int);
  PRINT_SIZES(short);
  PRINT_SIZES(long);
  PRINT_SIZES(char);
  PRINT_SIZES(float);
  PRINT_SIZES(double);
  PRINT_SIZES(unsigned int);
  PRINT_SIZES(long long);

  PRINT_SIZES(uint8_t);
  PRINT_SIZES(uint16_t);
  PRINT_SIZES(uint32_t);
  PRINT_SIZES(uint64_t);

  PRINT_SIZES(uint_fast8_t);
  PRINT_SIZES(uint_fast16_t);

  PRINT_SIZES(uintmax_t);
  PRINT_SIZES(intmax_t);

  PRINT_SIZES(__int128);

  PRINT_SIZES(student);

  int x[5];
  printf("size of int x[5] (整个数组)      : %zu bytes\n", sizeof(x));
  printf("size of pointer to int (&x[0])   : %zu bytes\n", sizeof(&x[0]));
  printf("size of pointer to array (&x)    : %zu bytes\n", sizeof(&x));

  return 0;
}
