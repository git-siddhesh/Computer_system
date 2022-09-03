package main

import (
    "fmt"
    "math/rand"
    "time"
)

func main() {

  total_start := time.Now()
  
  var n = 3580
  
  mat_1 := make([][]float64, n)
  for i := range mat_1 {
    mat_1[i] = make([]float64, n)
  }
 
  mat_2 := make([][]float64, n)
  for i := range mat_2 {
    mat_2[i] = make([]float64, n)
  }
 
  result := make([][]float64, n)
  for i := range result {
    result[i] = make([]float64, n)
  }

  mat_2_t := make([][]float64, n)	


  for i := 0; i < n; i++ {

    for j := 0; j < n; j++ {

      mat_1[i][j] = float64(rand.Intn(100) - 50) + rand.Float64()
      mat_2[i][j] = float64(rand.Intn(100) - 50) + rand.Float64()

    }

  }
  
  for i := 0; i < len(mat_2); i++ {
    for j := 0; j < len(mat_2[0]); j++ {
      mat_2_t[j] = append(mat_2_t[j], mat_2[i][j])
    }
  }




  // Multiplication of two matrix
  
  start := time.Now()

  for i := 0; i < n; i++ {

    for j := 0; j < n; j++ {

      result[i][j] = 0

      for k := 0; k < n; k++ {

        result[i][j] += mat_1[i][k] * mat_2_t[j][k]

      }
    }
  }
  
  elapsed := time.Now().Sub(start)
  total_elapsed := time.Now().Sub(total_start)
  
  fmt.Println("\n",n,elapsed,total_elapsed,elapsed*100/total_elapsed)
 }
