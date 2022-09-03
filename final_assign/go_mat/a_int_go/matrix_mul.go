package main

import (
    "fmt"
    "math/rand"
    "time"
)

func main() {

  total_start := time.Now()
  
  var n = 3584
  
  mat_1 := make([][]int, n)
  for i := range mat_1 {
    mat_1[i] = make([]int, n)
  }
 
  mat_2 := make([][]int, n)
  for i := range mat_2 {
    mat_2[i] = make([]int, n)
  }
 
  result := make([][]int, n)
  for i := range result {
    result[i] = make([]int, n)
  }

  mat_2_t := make([][]int, n)	



  for i := 0; i < n; i++ {

    for j := 0; j < n; j++ {

      mat_1[i][j] = rand.Intn(100) - 50
      mat_2[i][j] = rand.Intn(100) - 50
    }

  }


  for i := 0; i < len(mat_2); i++ {
    for j := 0; j < len(mat_2[0]); j++ {
      mat_2_t[j] = append(mat_2_t[j], mat_2[i][j])
    }
  }
  
 /* 
  
  fmt.Println("\n Matrix 1 is: \n")

  for i := 0; i < n; i++ {

    for j := 0; j < n; j++ {

      fmt.Printf("%d ", mat_1[i][j])

    }
    fmt.Println("\n")

  }
  fmt.Println("\n Matrix 2 is: \n")

  for i := 0; i < n; i++ {

    for j := 0; j < n; j++ {

      fmt.Printf("%d ", mat_2[i][j])

    }
    fmt.Println("\n")

  }
  */
  


  start := time.Now()
  // Multiplication of two matrix
  /*
  for i := 0; i < n; i++ {

    for j := 0; j < n; j++ {

      result[i][j] = 0

      for k := 0; k < n; k++ {

        result[i][j] += mat_1[i][k] * mat_2[k][j]

      }

    }

  }
  

  
  fmt.Println("\nAfter Multiplication Matrix is: \n")

  for i := 0; i < n; i++ {

    for j := 0; j < n; j++ {

      fmt.Printf("%d ", result[i][j])

    }
    fmt.Println("\n")

  }
  */
  for i := 0; i < n; i++ {

    for j := 0; j < n; j++ {

      result[i][j] = 0

      for k := 0; k < n; k++ {

        result[i][j] += mat_1[i][k] * mat_2_t[j][k]

      }
    }
  }
  
  elapsed := time.Now().Sub(start)
  
  /*
  fmt.Println("\nAfter Multiplication Matrix transpose is: \n")

  for i := 0; i < n; i++ {

    for j := 0; j < n; j++ {

      fmt.Printf("%d ", result[i][j])

    }
    fmt.Println("\n")

  }
  */
  
   total_elapsed := time.Now().Sub(total_start)
   fmt.Println("\n n=",n,"\n Meat Portion execution time ",elapsed,total_elapsed,elapsed*100/total_elapsed,"%")
 }
