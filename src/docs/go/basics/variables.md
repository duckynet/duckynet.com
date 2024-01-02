---
title: Go programming - Variables
summary: Understand how to declare and use variables in Go.
authors:
 - Manolotonto1
date: 2023-12-19
---

## What is a variable?
a variable is a named storage location that contains a value. For example, the following code declares a variable named `x` that contains the value `1`:

```go title="main.go"  linenums="1"
package main

func main() {
    var x int = 1
}
```

## Declaring variables
Variables are declared using the `var`, `const`, and the walrus operator `:=`. The syntax for declaring a variable is as follows:

### function scoped variables
a function scoped variable is a variable that is only accessible within the function it is declared in. The syntax for declaring a function scoped variable is as follows:

```go title="main.go"  linenums="1"
func main() {
    var x int = 1

    // shorthand variable declaration
    y := 2

    // multiple variable declaration
    var a, b, c int = 1, 2, 3

    // multiple variable declaration with shorthand
    d, e, f := 4, 5, 6
}
```

### package scoped variables
a package scoped variable is a variable that is accessible within the package it is declared in. The syntax for declaring a package scoped variable is as follows:

```go title="main.go"  linenums="1"
package main
// package scoped variable
var x int = 1

func main() {
    println(x)
}
```

### global scoped variables
a global scoped variable is a variable that is accessible within the entire program. The syntax for declaring a global scoped variable is as follows:


```go title="greeter/greeter.go"  linenums="1"
package greeter

var Greeter string = "Hello"

```

```go title="main.go"  linenums="1"
package main
// global scoped variable
import (
    "fmt"
    "github.com/Manolotonto1/greeter"
)

func main() {
    fmt.Println(greeter.Greeter)
}
```

Exporting variables requires you to capitalize the first letter of the variable name. if you want to keep the variable only accessible within the package, you can keep the first letter lowercase.

