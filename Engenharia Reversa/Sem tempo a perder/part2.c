#include <stdio.h>
#include <string.h>

void main()

{
  char *__s;
  size_t sVar1;
  int local_c;
  char *param_1 = "`D0FAD`5b05_H?N";
  
  puts("");
  puts("Puts, esqueci de printar o resto da flag, e agora?");
  __s = strdup(param_1);
  sVar1 = strlen(__s);
  for (local_c = 0; local_c < sVar1; local_c = local_c + 1) {
    if ((' ' < __s[local_c]) && (__s[local_c] != '\x7f')) {
      if (__s[local_c] < 'P') {
        __s[local_c] = __s[local_c] + '/';
      }
      else {
        __s[local_c] = __s[local_c] + -47;
      }
    }
  }
  puts(__s);
  return;
}
