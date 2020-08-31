// PCP-Übung zu Prolog 3 + 4 Aufgabe 3 in GO

package main

import "fmt"

func main() {
	primes := []int{2, 3, 5, 7, 11, 13}
	fmt.Println(append(primes, 17))
	fmt.Println(remove(7, &primes))
	fmt.Println(reverse(primes))
}

//b) ATTENTION: Slices are passed by reference
func remove(number int, primes *[]int) []int {
	for i, v := range *primes {
		if v == number {
			*primes = append((*primes)[:i], (*primes)[i+1:]...)
			return *primes
		}
	}
	return *primes
}

//c
func member(n int, primes []int) bool {
	for _, v := range primes {
		if v == n {
			return true
		}
	}
	return false
}

//d) & e)
func reverse(primes []int) []int {
	reversed := []int{}
	accumulator := []int{}
	for _, v := range primes {
		accumulator = append(accumulator, v)
		reversed = append(accumulator, reversed...)
		accumulator = []int{}
	}
	return reversed
}
