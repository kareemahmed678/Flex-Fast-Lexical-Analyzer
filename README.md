
# Flex - Fast Lexical Analyzer

A fast and efficient lexical analyzer built using **Flex** as part of a college assignment. This project demonstrates the basics of lexical analysis, focusing on performance and accuracy in analyzing input tokens.

## Features
- Efficient token recognition and analysis.
- Implements lexical analysis concepts used in compiler design.
- Simple, clean, and educational codebase for learning and experimentation.

## How It Works
The lexical analyzer processes an input stream and generates a list of tokens. It identifies different types of tokens such as keywords, identifiers, numbers, and symbols.

## Getting Started

### Prerequisites
To run this project, you need:
- **Flex** (Fast Lexical Analyzer)
- A compatible C/C++ compiler (e.g., GCC)
- Basic knowledge of command-line tools.

### Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/kareemahmed678/Flex-Fast-Lexical-Analyzer.git
   cd Flex-Fast-Lexical-Analyzer
   ```

2. Build the project using Flex:
   ```bash
   flex lexer.l
   gcc lex.yy.c -o lexer
   ```

3. Run the lexical analyzer:
   ```bash
   ./lexer < input.txt
   ```

### Example Input
Create an `input.txt` file with the following contents:
```
int x = 10;
float y = 20.5;
```

The output will display the recognized tokens.

## Resources
This project was inspired by tutorials and resources on compiler design. A key resource for this project was:
- [Flex Tutorial on YouTube](https://www.youtube.com/watch?v=54bo1qaHAfk&t=517s)

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvement, feel free to open an issue or submit a pull request.

## License
This project is open-source and available under the [MIT License](LICENSE).

---

### Connect
Follow me on GitHub for more projects: [Kareem Ahmed](https://github.com/kareemahmed678)
