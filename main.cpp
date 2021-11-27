#include <iostream>
#include <sqlite3.h>
#include <zlib.h>

int main(int, char**) {
    printf("%s\n", sqlite3_libversion());
    printf("%s\n", zlibVersion());
    return 0;
}
