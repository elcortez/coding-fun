package main

import ("fmt")

func main() {
  MySlice := []int{1, 2, 3}
  c := cap(MySlice)
  fmt.Println(c)

  for i := 0; i < 20; i++ {
    MySlice = append(MySlice, i)

    if cap(MySlice) != c {
      c = cap(MySlice)
      fmt.Println(c)
    }
  }


  // MyArray := [2]int{1, 2}

  // fmt.Println("array is %s\n", MyArray)
  // fmt.Println("first element is %s\n", MyArray[0])
  // fmt.Println("length is %s\n", len(MyArray))

  // for index, value := range MyArray {
  //   fmt.Println("index is %s\n", index)
  //   fmt.Println("value is %s\n", value)
  // }
}

