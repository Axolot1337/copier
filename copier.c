#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>

int main(void)
{
    char memory[4096];
    char source[4096];
    char destination[4096];
    FILE *source_ptr;
    FILE *destination_ptr;

    printf("Enter the source file path: ");
    fgets(source, sizeof(source), stdin);
    source[strcspn(source, "\n")] = 0;

    source_ptr = fopen(source, "r");
    if (source_ptr == NULL) {
        printf("Error: %s\n", strerror(errno));
        exit(EXIT_FAILURE);
    }

    printf("Enter the destination file path (including file name): ");
    fgets(destination, sizeof(destination), stdin);
    destination[strcspn(destination, "\n")] = 0;

    destination_ptr = fopen(destination, "w");
    if (destination_ptr == NULL) {
        printf("Error: %s\n", strerror(errno));
        fclose(source_ptr);
        source_ptr = NULL;
        exit(EXIT_FAILURE);
    }

    while(fgets(memory, sizeof(memory), source_ptr)) {
        fputs(memory, destination_ptr);
    }

    fclose(source_ptr);
    source_ptr = NULL;
    fclose(destination_ptr);
    destination_ptr = NULL;

    printf("File successfully copied from '%s' to '%s'\n", source, destination);
    return 0;
}
