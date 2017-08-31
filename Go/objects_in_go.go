package main

import ("fmt")

func main() {

  goku := &Saiyan{
    Person: &Person{"Goku"},
    Power: 9000,
  }

  goku.Introduce()


// If you are not sure between using a pointer or a value, use a pointer
// If you want to make data immutable, passe a value like (gohan := Saiyan)
  gohan := &Saiyan{
    Person: &Person{"Gohan"},
    Power: 1000,
    Father: &Saiyan {
      Person: &Person{"Goku"},
      Power: 9000,
      Father: nil,
    },
  }

  gohan.SuperObject()
  fmt.Println("Gohan's power : %v\n", gohan.Power)

  SuperArg(goku)
  fmt.Println("Goku's power : %v\n", goku.Power)
}

type Person struct {
  Name string
}

func (p *Person) Introduce() {
  fmt.Printf("Hi, I'm %s\n", p.Name)
}

type Saiyan struct {
  *Person
  Power int
  Father *Saiyan
}

func (s *Saiyan) SuperObject() {
  s.Power += 11000
}

func SuperArg(s *Saiyan) {
  s.Power += 1000
}
