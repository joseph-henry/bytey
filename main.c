#include <stdio.h>

int main(int argc, char **argv) {

   /*
   // Trigger undefined behaviour sanitizer
   int k = 0x7fffffff;
   k += argc;
   */

   // Trigger address sanitizer (also memory sanitizer)
   int array[1];
   int y = array[1];

   printf("nom\n");
   return 0;
}
