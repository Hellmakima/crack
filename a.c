#include <stdio.h>
#include <string.h>

void sing(void) {
    printf("This is the secret of victoria\n");
}

int main(void) {
    char ans[20];

    fgets(ans, sizeof(ans), stdin);
    ans[strcspn(ans, "\n")] = '\0';

    if (strcmp(ans, "hellyeah") == 0)
        sing();

    return 0;
}

