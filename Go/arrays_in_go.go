package main

import (
  "fmt"
)

func main() {
  scores := []int{1, 2, 3, 4, 5}
  copied := make([]int, 5)
  copy(copied, scores[:4])
  fmt.Println(copied)

  // MyString := "Hello World !!!"
  // fmt.Println(strings.Index(MyString[11:], " "))

  // AnotherIntSlice := []int{1, 2, 3, 4, 5}
  // LastNumber := AnotherIntSlice[len(AnotherIntSlice)-1]
  // fmt.Println(LastNumber)
  // AllArrayButOne := AnotherIntSlice[:len(AnotherIntSlice)-1]
  // fmt.Println(AllArrayButOne)
  // FirstTwoNumbers := AnotherIntSlice[0:2]
  // fmt.Println(FirstTwoNumbers)

  // MyStringSlice := []string{"letho", "geralt"}
  // MyBoolSlice := make([]bool, 10)
  // MyIntSlice := make([]int, 0, 20)
  // [] 0 in length, 20 in cap
  // fmt.Printf("Slice is %d in cap and %d in length : %d \n", cap(MyIntSlice), len(MyIntSlice), MyIntSlice)

  // MyIntSlice := make([]int, 20)
  // [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 20 in length, 20 in cap
  // fmt.Printf("Slice is %d in cap and %d in length : %d \n", cap(MyIntSlice), len(MyIntSlice), MyIntSlice)
  // MyIntSlice[4] = 20
  // fmt.Println(MyIntSlice)

  // MyMakeSlice := make([]int, 4)
  // fmt.Printf("Slice is %d in cap and %d in length : %d \n", cap(MyMakeSlice), len(MyMakeSlice), MyMakeSlice)

  // fmt.Printf("adding one new number... \n")
  // MyMakeSlice = append(MyMakeSlice, 9332)
  // fmt.Printf("Slice is %d in cap and %d in length : %d \n", cap(MyMakeSlice), len(MyMakeSlice), MyMakeSlice)

  // fmt.Printf("adding one new number... \n")
  // MyMakeSlice = append(MyMakeSlice, 676)
  // fmt.Printf("Slice is %d in cap and %d in length : %d \n", cap(MyMakeSlice), len(MyMakeSlice), MyMakeSlice)

  // MySlice := []int{1, 2, 3}
  // c := cap(MySlice)
  // fmt.Println(">>>>>>>>>>>")
  // fmt.Println(c)

  // for i := 0; i < 20; i++ {
  //   MySlice = append(MySlice, i)

  //   if cap(MySlice) != c {
  //     c = cap(MySlice)
  //     fmt.Println("----------")
  //     fmt.Println(c)
  //   }
  // }


  // MyArray := [2]int{1, 2}

  // fmt.Println("array is %s\n", MyArray)
  // fmt.Println("first element is %s\n", MyArray[0])
  // fmt.Println("length is %s\n", len(MyArray))

  // for index, value := range MyArray {
  //   fmt.Println("index is %s\n", index)
  //   fmt.Println("value is %s\n", value)
  // }
}

