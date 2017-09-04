package main

import (
  "fmt"
)

func main() {
  mapper := make(map[string]int)
  mapper["goku"] = 9001
  mapper["vegeta"] = 1000
  mapper["gohan"] = 2000

  fmt.Println(mapper)
  fmt.Printf("there are %d mapper keys", len(mapper))

}
