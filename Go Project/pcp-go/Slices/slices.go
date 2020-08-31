package main

import (
	"fmt"
)

func main() {
	//case 1
	a := []int{}
	a = append(a, 1)
	a = append(a, 2)
	b := append(a, 3)
	c := append(a, 4)
	fmt.Println("a: ", a, "\nb: ", b, "\nc: ", c)

	//case 2
	a = append(a, 3)
	x := append(a, 4)
	y := append(a, 5)
	fmt.Println("a: ", a, "\nx: ", x, "\ny: ", y)

}
