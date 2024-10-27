#include <stdio.h>

int main() {
    int N;
    float incr;

    printf("Enter positive integer N: ");
    scanf("%d", &N);

    printf("\nNumbers from %d to 0:\n", N);
    for (int x = N; x >= 0; x--) {
        printf("%d ", x);
    }
    printf("\n");

    printf("\nPattern from 1 to %d:\n", N);
    for (int x = 1; x <= N; x++) {
        if (x % 4 != 0) {
            printf("%d ", x);
        }
    }
    printf("\n");

    printf("\nEnter increment value less than 1: ");
    scanf("%f", &incr);

    if (incr >= 1) {
        printf("Error: Increment must be less than 1.\n");
        return 1;
    }

    printf("\nNumbers from 0 to %d with increment %.2f:\n", N, incr);
    for (float x = 0; x <= N; x += incr) {
        printf("%.2f ", x);
    }
    printf("\n");

    return 0;
}


