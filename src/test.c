#include <stdio.h>
#include "test.h"
static char* strs[3] = { "howdy", "doody", NULL };
extern void  ptr_to_strs (char ***ptr) {
    *ptr = strs;
  }
