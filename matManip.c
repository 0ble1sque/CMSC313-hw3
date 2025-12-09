#include <stdio.h>

void matmult(int result[3][3], int first[3][3], int second[3][3]);
void matadd(int result[3][3], int first[3][3], int second[3][3]);

int main(){
    int A[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
    int B[3][3] = {{1, 2, 0}, {3, 4, 5}, {0, 6, 7}};
    int result[3][3];

    matmult(result, A, B);
    matadd(result, result, A);

    //prints out the first two matrices
    for(int i = 0; i < 3; i++){
        //prints the start of the A matrix
        if(i != 1){
            printf("    [");
        } else {
            printf("A = |");
        }

        //prints the internals of the A matrix
        for(int j = 0; j < 3; j++){
            if(j != 2){
                printf("%d ", A[i][j]);
            } else if(i != 1) {
                printf("%d]", A[i][j]);
            } else {
                printf("%d|", A[i][j]);
            }
        }

        //moves the next matrix forward
        printf("\t");

        //prints the start of the B matrix
        if(i != 1){
            printf("    [");
        } else {
            printf("B = |");
        }

        //prints the internals of the B matrix
        for(int k = 0; k < 3; k++){
            if(k != 2){
                printf("%d ", B[i][k]);
            } else if(i != 1){
                printf("%d]", B[i][k]);
            } else {
                printf("%d|", B[i][k]);
            }
        }

        //moves the line down
        printf("\n");
    }

    //prints out the resulting matrix
    for(int i = 0; i < 3; i++){
        //prints the start of the final matrix
        if(i != 1){
            printf("        [");
        } else {
            printf("A*B+A = |");
        }

        //prints the internals of the final matrix, adding spaces for single digit numbers
        for(int j = 0; j < 3; j++){
            if(j != 2){
                if(result[i][j] < 10){
                    printf(" %d ", result[i][j]);
                } else {
                    printf("%d ", result[i][j]);
                }
            } else if(i != 1){
                if(result[i][j] < 10){
                    printf(" %d]", result[i][j]);
                } else {
                    printf("%d]", result[i][j]);
                }
            }else{
                if(result[i][j] < 10){
                    printf(" %d|", result[i][j]);
                } else {
                    printf("%d|", result[i][j]);
                }
            }
        }

        //moves the line down
        printf("\n");
    }
    
    return 0;
}

void matmult(int result[3][3], int first[3][3], int second[3][3]){
    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 3; j++){
            result[i][j] = first[i][j] * second[i][j];
        }
    }
}

void matadd(int result[3][3], int first[3][3], int second[3][3]){
    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 3; j++){
            result[i][j] = first[i][j] + second[i][j];
        }
    }
}