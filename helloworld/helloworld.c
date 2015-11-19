#include <stdio.h>
#include <unistd.h>

int main() {
  while(1) {
    printf("Hello world from rump unikernel on Xen\n");
    sleep(1);
  }
}
