package main

import (
	"fmt"
)

type Being interface {
	say() string
}

type Human struct {
	name string
}

type Dog struct {
	name string
}

func (human Human) say() string {
	return fmt.Sprintf("hello, my name is %s", human.name)
}

func (dog Dog) say() string {
	return fmt.Sprintf("bau, my name is %s", dog.name)
}

func speak(being Being) {
	fmt.Println(being.say())
}

func main() {
	human := Human{name: "Martin"}
	dog := Dog{name: "Bob"}
	speak(human)
	speak(dog)
}
