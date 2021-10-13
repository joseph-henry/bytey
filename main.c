#include <stdio.h>
#include <stdint.h>
#include <stddef.h>

int trigger_usan(int argc)
{
   int k = 0x7fffffff;
   k += argc;
}

void trigger_asan()
{
   int array[1];
   int y = array[1];
}

#ifdef CLANG_FUZZER
   // This is the main entry point for our fuzzer (the TARGET function)
   // Add extern "C" if compiled as C++
   int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
      printf("%d\n", size);
      if (size > 0 && data[0] == 'n') {
         if (size > 1 && data[1] == 'o') {
            if (size > 2 && data[2] == 'm') {
               __builtin_trap();
            }
         }
      }
      return 0;
   }

#else // Only declare and define main if we aren't fuzzing

int main(int argc, char **argv) {

   // trigger_usan(argc)
   // trigger_asan()

   printf("nom\n");
   return 0;
}
#endif