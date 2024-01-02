---
title: Go Programming - A Beginner's Guide to Types
summary: Types in Go.
authors:
    - Manolotonto1
date: 2023-12-19
---

## What is a type?
a type is a set of values and operations on those values. For example, the type `int` is a set of all integers and operations on those integers. The type `string` is a set of all strings and operations on those strings. The type `bool` is a set of all booleans and operations on those booleans.

## Types in Go
Go is a statically typed language. This means that every variable has a type, and the compiler will check that the types of all variables are compatible with each other. For example, the following code will not compile because the types of the variables are not compatible:

```go title="main.go"  linenums="1"
package main

func main() {
    var x int = 1
    var y string = "hello"
    x = y
}
```

The compiler will give the following error message:

```bash title="Error message"
main.go:6: cannot use y (type string) as type int in assignment
```

## Basic types
Go has several basic types, including `int`, `float`, `bool`, `string`, and `rune`. The following table lists the basic types in Go:

| Type | Description |
| ---- | ----------- |
| `bool` | A boolean value. |
| `byte` | An alias for `uint8`. |
| `complex64` | A complex number with float32 real and imaginary parts. |
| `complex128` | A complex number with float64 real and imaginary parts. |
| `error` | An error value. |
| `float32` | A 32-bit floating-point number. |
| `float64` | A 64-bit floating-point number. |
| `int` | A signed integer. |
| `int8` | An 8-bit signed integer. |
| `int16` | A 16-bit signed integer. |
| `int32` | A 32-bit signed integer. |
| `int64` | A 64-bit signed integer. |
| `rune` | An alias for `int32`. |
| `string` | A string of characters. |
| `uint` | An unsigned integer. |
| `uint8` | An 8-bit unsigned integer. |
| `uint16` | A 16-bit unsigned integer. |
| `uint32` | A 32-bit unsigned integer. |
| `uint64` | A 64-bit unsigned integer. |
| `uintptr` | An unsigned integer large enough to store the uninterpreted bits of a pointer value. |

## Custom types

Go also allows you to define your own types. For example, the following code defines a type called `greeting`:

```go title="main.go"  linenums="1"
package main

type greeting string
type number int

func main() {
    var message greeting = "hello"
    var x number = 1
    println(message)
    println(x)
}
```
You can also define a type for a function. For example, the following code defines a type for a function that takes an `int` and returns an `int`:

```go title="main.go"  linenums="1"
package main

type add func(int, int) int

func main() {
    var x add = func(a, b int) int {
        return a + b
    }
    println(x(1, 2))
}
```

## Type conversion

You can convert a value from one type to another type. For example, the following code converts a `float64` to an `int`:

```go title="main.go"  linenums="1"

package main

func main() {
    var x float64 = 1.5
    var y int = int(x)
    println(y)
}
```
This technique is called type conversion. You can also convert a value from one type to another type using the `strconv` package. For example, the following code converts a `string` to an `int`:

```go title="main.go"  linenums="1"

package main

import (
    "strconv"
)

func main() {
    var x string = "1"
    var y int, _ = strconv.Atoi(x)
    println(y)
}
```

Some types require a package function to convert them to another type, Some only require the type name. For example, the following code converts a `string` to a `[]byte`:

```go title="main.go"  linenums="1"

package main

import (
    "fmt"
)

func main() {
    var x string = "hello"
    var y []byte = []byte(x)
    fmt.Println(y)
}
```


