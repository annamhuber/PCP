package main

import "fmt"

func main() {
	m := make(map[string]float64)
	m["pi"] = 3.14   // Add a new key-value pair
	m["pi"] = 3.1416 // Update value
	fmt.Println(m)   // Print map: "map[pi:3.1416]"

	v := m["pi"] // Get value: v == 3.1416
	fmt.Println(v)

	v1 := m["pie"] // Not found: v == 0 (zero value)
	fmt.Println(v1)

	_, found := m["pi"] // found == true
	fmt.Println(found)
	_, found1 := m["pie"] // found == false
	fmt.Println(found1)

	if x, found := m["pi"]; found {
		fmt.Println(x)
	} // Prints "3.1416"

	delete(m, "pi") // Delete a key-value pair
	fmt.Println(m)  // Print map: "map[]"
}
