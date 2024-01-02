---
title: Getting Started
summary: Installing Go and writing your first hello world program.
authors:
    - Manolotonto1
date: 2023-12-19
---

# Getting Started
to get started lets install the go
## Go Installation on Windows

1. **Visit Go Download**: Go to the [Go Downloads page](https://golang.org/dl/).
2. **Download for Windows**: Click the Download link for the Windows `.msi` file.
3. **Run Installer**: Execute the downloaded installer.
4. **Installation Steps**: Follow the on-screen instructions.
5. **Installation Path**: The default installation path is `C:\Program Files\Go`.
6. **Verify installation**: Open a command prompt and type `go version` to verify that the installation was successful. if you see the version of go you installed then you are good to go. if not then you need to add the go installation path to the environment variables or restart your computer.

## Installation on Linux and macOS
I like to use Brew for my package management on macOS and Linux. If you don't have Brew installed, you can find instructions on how to install it [here](https://brew.sh/). Once you have Brew installed, you can install Go by running the following command in your terminal:

```bash title="Install Go on macOS and Linux"
brew install go

# Verify installation
go version
```


## Hello world

Now that you have Go installed, let's write our first program. Open your favorite text editor and create a file called `hello.go` with the following contents:

```go title="hello.go"  linenums="1"
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

### Break down 

- `package main` tells the Go compiler that this is a standalone executable program, not a library.
- `import "fmt"` imports the `fmt` package, which contains functions for printing formatted output and reading input from the user.
- `func main()` is the entry point for the program. The `main` function is where execution begins.
- `fmt.Println("Hello, World!")` prints the string `Hello, World!` to the console.

### Run the program

To run the program, open a terminal and navigate to the directory where you saved the `hello.go` file. Then run the following command:

```bash title="Run hello.go"
go run hello.go
# or
go run .

# Output
Hello, World!
```

## Vscode setup

### Install the Go extension

The first thing you need to do is install the Go extension for VS Code. You can do this by opening the Extensions view `Ctrl+Shift+X` or clicking on the extensions icon, and searching for "Go". Click the Install button to install the extension.

### Install the Go tools

The Go extension for VS Code requires the Go tools to be installed on your system.
Normally, VS Code will prompt you to install the Go tools when you open a Go file or after you install the Go extension for the first time. If you don't see this prompt, you can install the Go tools manually by running the following command in your terminal:

```bash title="Install Go tools"
go install golang.org/x/tools/gopls@latest
```
Gopls is the official language server for Go. It provides features such as code completion, refactoring, and documentation generation. This is will allow you to debug your without having to run it.

## The basics

Now that we have everything set up let's write some code! but firs, lets go over some of the basics of Go.

| Topic | Description |
|-------|-------------|
| [Types](../basics/types) | Learn about different types in Go and how to use them. |
| [Variables](../basics/variables) | Understand how to declare and use variables in Go. |
| [Functions](../basics/functions) | Explore the concept of functions in Go and how to define and call them. |
| [Conditionals](../basics/conditionals) | Learn how to use if statements and switch statements for conditional logic in Go. |
| [Loops](../basics/loops) | Discover different types of loops in Go, such as for loops and while loops. |
| [Arrays](../basics/arrays) | Understand how to work with arrays, including declaring, initializing, and accessing elements. |
| [Slices](../basics/slices) | Learn about slices, a dynamic and flexible alternative to arrays in Go. |
| [Maps](../basics/maps) | Explore the map data structure in Go and how to use it for key-value pairs. |
| [Structs](../basics/structs) | Understand how to define and use structs, which allow you to create custom data types in Go. |
| [Interfaces](../basics/interfaces) | Learn about interfaces, a powerful concept in Go for achieving polymorphism. |
| [Pointers](../basics/pointers) | Understand how pointers work in Go and how to use them to manipulate data. |
| [Methods](../basics/methods) | Explore methods, which are functions associated with a particular type in Go. |
| [Concurrency](../basics/concurrency) | Learn about concurrent programming in Go and how to work with goroutines and channels. |
| [Channels](../basics/channels) | Understand how to use channels for communication and synchronization between goroutines. |
| [Errors](../basics/errors) | Learn about error handling in Go and how to handle and propagate errors. |
| [Testing](../basics/testing) | Explore testing in Go and how to write unit tests for your code. |
| [Benchmarking](../basics/benchmarking) | Learn how to benchmark your Go code to measure its performance. |
| [Dependency Management](../basics/dependency_management) | Understand how to manage dependencies in Go using modules and package managers. |

