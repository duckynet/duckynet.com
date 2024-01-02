---
title: Go programming - Functions
summary: Explore the concept of functions in Go and how to define and call them.
authors:
    - Manolotonto1
date: 2023-12-19
---

## What is a function?

a function is a block of code that performs a specific task. For example, the following code defines a function named `greet` that prints a greeting to the console:

```go title="main.go"  linenums="1"
package main

func greet() {
    println("Hello, world!")
}

func main() {
    greet()
}
```

## Declaring functions

Declaring a function is done using the `func` keyword. The syntax for declaring a function is as follows:

```go title="main.go"  linenums="1"
package main

func greet() {
    println("Hello, world!")
}
```

you can also declare functions using the var keyword in the same style as javascript:

```go title="main.go"  linenums="1"
package main

var greet = func (name string) string {
	return "Hello " + name
}
func main() {
	println(greet("World"))
}
```

## Calling functions

Calling functions can be done by using the function name followed by parentheses. The syntax for calling a function is as follows:

```go title="main.go"  linenums="1"
package main

func greet() {
    println("Hello, world!")
}

func main() {
    greet()
}
```
## Function parameters

Function parameters are very important, they allow you to pass data into a function. The syntax for declaring a function with parameters is as follows:

```go title="main.go"  linenums="1"
package main

func greet(name string) {
    println("Hello, " + name + "!")
}

func main() {
    greet("world")
}
```
## Function return values

### Single return value
Functions can return values. The syntax for declaring a function with a return value is as follows:

```go title="main.go"  linenums="1"
package main

func greet(name string) string {
    return "Hello, " + name + "!"
}

func main() {
    println(greet("world"))
}
```
### Multiple return values
Functions can return multiple values. The syntax for declaring a function with multiple return values is as follows:

```go title="main.go"  linenums="1"
package main

func greet(name string) (string, error) {
    return "Hello, " + name + "!", nil
}

func main() {
    println(greet("world"))
}
```

#### JSON Decoding example
here is an example of a function that decodes a json string into a struct:

```go title="main.go"  linenums="1"
package main

import (
    "encoding/json"
    "fmt"
)

type Person struct {
    Name string `json:"name"`
    Age  int    `json:"age"`
}
func Decode(data string) (Person, error) {
    var person Person
    err := json.Unmarshal([]byte(data), &person)
    if err != nil {
        return Person{}, err
    }
    return person, nil
}
func main() {
    person, err := Decode(`{"name":"John Doe","age":42}`)
    if err != nil {
        fmt.Println(err)
        return
    }
    fmt.Println(person)
}

```
Here is an explanation of the code:

- we import the `encoding/json` package to decode the json string.
- we define a `Person` struct with a `Name` and `Age` field. and we use the `json` struct tag to tell the `json.Unmarshal` function how to decode the json string.
- The `Decode` function takes a string as input and returns a `Person` and an `error`.
- The `Decode` function uses the `json.Unmarshal` function to decode the string into a `Person` struct.
- The `Decode` function returns the `Person` struct and an `error` if there is one.
- The `main` function calls the `Decode` function and prints the `Person` struct if there is no error.

We will explain [structs and struct tags](./structs.md) in more detail later.

## Function scoping

Functions have their own scope. This means that variables declared inside a function are only accessible inside that function. For example, the following code will not compile because the variable `x` is not accessible outside the function `main`:

```go title="main.go"  linenums="1"
package main

func main() {
    var x int = 1
}

func greet() {
    println(x)
}
```

The compiler will give the following error message:

```bash title="Error message"
main.go:8: undefined: x
```
### Package level functions and exported functions
Scoping functions works in the same way as variables, Upper case functions are exported and lower case functions are not. here is an example:

```go title="greeter/greeter.go"  linenums="1"
package greeter

// unexported function
func greet(x string) {
    println(x, "unexported!")
}

// exported function
func Greet(x string) {
    println(x, "exported!")
}

```
take into note that the `Greet` function is exported and the `greet` function is not, hence they are not the same function.

## Passing functions as arguments

Functions can be passed as arguments to other functions. The syntax for passing a function as an argument is as follows:

```go title="main.go"  linenums="1"

package main

func greet(name string) string {
    return "Hello, " + name + "!"
}

func printGreeting(greet func(string) string) {
    println(greet("world"))
}

func main() {
    printGreeting(greet)
}
```

### Example with a custom type:

```go title="main.go"  linenums="1"
package main

import (
    "fmt"
)

type GreetFunc func(string) string

func greet(name string) string {
    return "Hello, " + name + "!"
}

func printGreeting(greet GreetFunc) {
    fmt.Println(greet("world"))
}

func main() {
    printGreeting(greet)
}
```

### Example with anonymous functions:

```go title="main.go"  linenums="1"
package main

import (
    "fmt"
)

type GreetFunc func(string) string

func printGreeting(greet GreetFunc) {
    fmt.Println(greet("world"))
}

func main() {
    printGreeting(func(name string) string {
        return "Hello, " + name + "!"
    })
}
```
Explanation:

- The `main` function calls the `printGreeting` function and passes an anonymous function as an argument.
- The anonymous function takes a string as input and returns a string.
- The anonymous function returns a greeting to the console.

## Anonymous functions

Anonymous functions are functions without a name. They are useful for creating closures. The syntax for declaring an anonymous function is as follows:

```go title="main.go"  linenums="1"
package main

func main() {
    func() {
        println("Hello, world!")
    }()
}
```

explanation:

- The `main` function calls an anonymous function.
- The anonymous function prints "Hello, world!" to the console.
- the `()` at the end of the anonymous function call the function.

## Closures

A closure is a function that captures the state of its surrounding environment. For example, the following code defines a function named `greet` that captures the variable `name` from its surrounding environment:

```go title="main.go"  linenums="1"

package main

func greet(name string) func() {
    // accessible in the returned function
    someOtherVariable := "some other variable"
    
    return func() {
        println("Hello, " + name + "!")
        println(someOtherVariable)
    }
}

func main() {
    greet("world")()
}
```

Explanation:

- The `greet` function takes a string as input and returns a function that takes no input and returns nothing.
- The returned function captures the variable `name` from its surrounding environment.
- The `main` function calls the `greet` function and calls the returned function.

## Recursion

Recursion is a technique where a function calls itself. For example, the following code defines a function named `factorial` that calculates the factorial of a number:

```go title="main.go"  linenums="1"
package main

func factorial(n int) int {
    if n == 0 {
        return 1
    }
    return n * factorial(n-1)
}

func main() {
    println(factorial(5))
}
```

Explanation:

- The `factorial` function takes an integer as input and returns an integer.
- The `factorial` function calls itself if the input is not zero and if the the value is not zero it returns the value multiplied by the factorial of the value minus one.
- The `main` function calls the `factorial` function.


