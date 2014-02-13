// array_demo.c
// Program to illustrate the use of arrays.
#include <stdio.h>
#define MAX 6

int scanArray(double [], int);
void printArray(double [], int);
double sumArray(double [], int);

int main(void) {
	double list[MAX];
	int size;

	size = scanArray(list, MAX);
	printArray(list, size);
	printf("Sum = %f\n", sumArray(list, size));

	return 0;
}

// To read values into arr and return
// the number of elements read.
int scanArray(double arr[], int max_size) {
	int size, i;

	printf("How many elements? ");
	scanf("%d", &size);
	if (size > max_size) {
		printf("Exceeded max; you may only enter");
		printf(" %d values.\n", max_size);
		size = max_size;
	}
	printf("Enter %d values: ", size);
	for (i=0; i<size; i++) {
		scanf("%lf", &arr[i]);
	}
	return size;
}

// To print values of arr
void printArray(double arr[], int size) {
	int i;

	for (i=0; i<size; i++) 
		printf("%f ", arr[i]);
	printf("\n");
}

// To compute sum of all elements in arr
double sumArray(double arr[], int size) {
	int i; 
	double sum = 0.0;

	for (i=0; i<size; i++)
		sum += arr[i];
	return sum;
}

