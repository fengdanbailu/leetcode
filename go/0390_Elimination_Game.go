package main

import (
	"fmt"
	"strconv"
)

func lastRemaining(n int) int {
	return f(n, 0)
}

func f(n int, d int) int {
	if n == 1 {
		return 1
	}
	return 2*f(n/2, 1-d) + (n%2-1)*d
}

func lastRemaining_test1(n int) int {
	arrayList := make([]int, n)
	for i, _ := range arrayList {
		arrayList[i] = i + 1
	}
	list := arrayList
	direct := true
	for len(list) > 1 {
		list = deleteHalf(list, direct)
		direct = !direct

	}
	return list[0]
}

func deleteHalf(array []int, leftToRight bool) []int {
	var list []int
	lastOne := 0
	if leftToRight {
		if len(array)%2 == 1 {
			lastOne = array[len(array)-1]
		} else {
			lastOne = array[len(array)-2]
		}

		for i := 0; i < len(array); i++ {
			if i%2 == 1 {
				list = append(list, array[i])
			}
		}
	} else {
		if len(array)%2 == 1 {
			lastOne = array[1]
		} else {
			lastOne = array[0]
		}
		for i := 0; i < len(array); i++ {
			if i%2 == len(array)%2 {
				list = append(list, array[i])
			}
		}
	}
	if len(list) == 0 {
		list = append(list, lastOne)
	}

	return list
}

func f0390() {
	var output int
	for i := 1; i < 30; i++ {
		output = lastRemaining(i)
		fmt.Println("x=" + strconv.Itoa(i) + ",fx=" + strconv.Itoa(output))
	}

}
