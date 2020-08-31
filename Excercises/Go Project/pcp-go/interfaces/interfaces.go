// PCP-Übung zu Java 8 - Teil 1+2 Aufgabe 1 in GO
package main

import "fmt"

type generalInterface interface {
	doIt() string
}

type specificInterface interface {
	generalInterface
}

func main() {
	g := new(exercise1)
	general := implementation("do it the general way")
	specific := implementation("do it the specific way")
	g.generalInterface = general
	g.specificInterface = specific

	fmt.Println(g.generalInterface.doIt())
	fmt.Println(g.specificInterface.doIt())
}

type exercise1 struct {
	generalInterface
	specificInterface
}

type implementation string

func (i implementation) doIt() string {
	return string(i)
}
