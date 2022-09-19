/**
 * Programmer: Chris Tralie
 * Purpose: Print out the hex representation of an int, then cast
 * to a character array and print out one byte at a time
 */
#include <stdio.h>
#include <stdlib.h>

typedef unsigned char uint8_t;

int main(int argc, char** argv) {
    if (argc < 2) {
        printf("Usage: ./hex <number>\n");
        return 1;
    }
    // Step 1: Print out in hex
    int x = atoi(argv[1]);
    printf("Hex representation: %x\n", x);

    // Step 2: Print out byte by byte
    uint8_t* c = (uint8_t*)(&x);
    for (int i = 0; i < 4; i++) {
        printf("Byte %i: %x\n", i, c[i]);
    }
    return 0;
}