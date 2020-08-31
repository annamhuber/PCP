// PCP-Übung zu Java 8, Teil 3 + 4 Aufgabe 3 in GO
package main

import (
	"fmt"
	"time"
)

const threeSeconds = 3000
const sixSeconds = 6000
const halfSecond = 500

func doBlockingWait(waitingTimeMillis int) {
	time.Sleep(time.Duration(waitingTimeMillis) * time.Millisecond)
}

func longLastingTask(c chan int) {
	time.Sleep(threeSeconds * time.Millisecond)
	fmt.Print(threeSeconds)
	c <- threeSeconds
}

func evenLongerLastingTask(c chan int) {
	time.Sleep(sixSeconds * time.Millisecond)
	fmt.Print(sixSeconds)
	c <- sixSeconds
}

func lastTask(c chan int) string {
	a := <-c
	b := <-c
	time.Sleep(2000 * time.Millisecond)
	total := a + b + 2000
	fmt.Printf("was waiting for %d", total)
	return fmt.Sprintf("was waiting for %d", total)
}

func main() {
	channel := make(chan int)
	go longLastingTask(channel)
	go evenLongerLastingTask(channel)
	go lastTask(channel)
	for i := 0; i < 20; i++ {
		fmt.Print(".")
		time.Sleep(halfSecond * time.Millisecond)
	}
	fmt.Println("-> Done")
}
