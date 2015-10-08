#include <stdio.h>

extern char *filename;

void test()
{
  int a = 5, b = 0;

  a = a / b;
}

int main(int argc, char *argv[])
{
  filename = argv[0];

  test();

  return 0;
}
