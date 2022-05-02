#include <stdio.h>
#include "test.h"
static char* strs[3] = { "howdy", "doody", NULL };
DLLEXPORT void  ptr_to_strs (char ***ptr) {
    *ptr = strs;
}


DLLEXPORT int do_callback(int (*cb)(int), int arg) {
    return cb(arg);
}
