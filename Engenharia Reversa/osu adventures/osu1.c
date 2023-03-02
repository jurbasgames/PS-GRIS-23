#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <crypt.h>

int main(int argc, char *argv[])
{
    char* flag = "123";
    flag = crypt(flag,"$1$");
    printf("%s\n",flag);
    return 0;
}

// $1$$GmbL3iXOMZR57QuGDLv.L1