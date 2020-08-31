package main

import (
	"fmt"
	str "strings" // Package Alias

	"hslu/pcp/packer/numbers"
	"hslu/pcp/packer/strings"
	"hslu/pcp/packer/strings/greeting" //import a nested package
)

func main() {
	fmt.Println(numbers.IsPrime(19))

	fmt.Println(greeting.WelcomeText)

	fmt.Println(strings.Reverse("callicoder"))

	fmt.Println(str.Count("Go is Awesome. I love Go", "Go"))
}
