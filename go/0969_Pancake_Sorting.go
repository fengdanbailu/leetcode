package main

import (
	"fmt"
)

func pancakeSort(A []int) []int {
	var result []int

	for i := range A[0:len(A)] {
		var k = len(A) - i
		var num = findMaxIndexFromFirstK(A, k)
		if num == k {

		} else if num == 1 {
			result = append(result, k)
			A = reverseFirstK(A, k)
		} else if num != k {
			result = append(result, num)
			A = reverseFirstK(A, num)
			result = append(result, k)
			A = reverseFirstK(A, k)
		}

	}
	return result
}

func findMaxIndexFromFirstK(A []int, k int) int {
	max := A[0]
	index := 0
	for i := range A[0:k] {
		if max < A[i] {
			max = A[i]
			index = i
		}
	}
	return index + 1
}

func reverseFirstK(A []int, k int) []int {
	tmp := 0
	for i := 0; i < k/2; i++ {
		tmp = A[i]
		A[i] = A[k-1-i]
		A[k-1-i] = tmp
	}
	fmt.Println(k)
	fmt.Println(A)
	return A
}

func main() {
	input := []int{1, 2, 3}
	fmt.Println(input)
	output := pancakeSort(input)
	fmt.Println(output)
}
