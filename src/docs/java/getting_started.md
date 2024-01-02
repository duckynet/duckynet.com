---
title: Getting Started
summary: Getting Started with Java "Hello, World!"
authors:
    - duckynet
date: 2023-12-18
---
# Getting Started

## JDK Installation on Windows

1. **Visit JDK Download**: Go to the [Java SE Downloads page](https://www.oracle.com/java/technologies/downloads/).
2. **License Agreement**: Accept the Oracle License Agreement.
3. **Download for Windows**: Click the Download link for the Windows `.exe` file.
4. **Run Installer**: Execute the downloaded installer.
5. **Installation Steps**: Follow the on-screen instructions.
6. **Installation Path**: The default installation path is `C:\Program Files\Java\jdk-<FEATURE>`.

## Visual Studio Code Installation on Windows

1. **Download VS Code**: Get the [Visual Studio Code installer](https://code.visualstudio.com/Download) for Windows.
2. **Run Installer**: Execute the downloaded installer.
3. **Installation Path**: The default path is `C:\Users\{Username}\AppData\Local\Programs\Microsoft VS Code`.
4. **Java Extension Pack**: Install the [Extension Pack for Java](vscode:extension/vscjava.vscode-java-pack) in VS Code.

## Create a 'Hello World' Project

1. **Open Visual Studio Code**: Start VS Code.
2. **Command Palette**: Open it by pressing `Ctrl + Shift + P`.
3. **Create Java Project**: Type `Java: Create Java Project` and select it.
4. **Project Setup**: Choose `No build tools`.
5. **Project Name**: Name your project `HelloWorld` and choose a save location.

## Understanding the Project Hierarchy

- `HelloWorld/` (Main Folder): The root folder of the project.
- `README.md`: Provides an overview of the project.
- `.vscode/`: Contains VS Code-specific configurations.
- `lib/`: Stores external libraries and dependencies.
- `src/`: Holds the main source code files.

### Key Files and Folders

- `settings.json`: Configuration settings for the Java project in VS Code.
- `App.java`: The main Java class file for the application.

### settings.json Explained
```json
{
    "java.project.sourcePaths": ["src"],
    "java.project.outputPath": "bin",
    "java.project.referencedLibraries": ["lib/**/*.jar"]
}
```

- **Source Paths**: Specifies the directory (`src`) containing Java source files.
- **Output Path**: Defines `bin` as the directory for compiled Java files.
- **Referenced Libraries**: Includes all `.jar` files in the `lib` folder.

### App.java Explained
```java
public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
    }
}
```
### **Code Explanation**:
   - `public class App`: Defines a public class named `App`.
   - `public static void main(String[] args)`: The program's entry point.
   - `System.out.println("Hello, World!");`: Prints "Hello, World!" to the console.

## Running 'Hello World'

### **Run the Program**:
   - Right-click in the `App.java` file.
   - Select `Run Java`.
   - The output "Hello, World!" appears in VS Code's console.