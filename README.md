# duckynet.com


Welcome to duckynet, your friendly and innovative learning companion. Dive into a world of knowledge with our Ducky Guide and explore a range of technical topics crafted with simplicity and expertise.

## Getting Started

This guide will help you set up the duckynet project on your local machine for development and testing.

### Prerequisites

Before you start, ensure you have Python installed on your system. You can check this by running `python --version`, `python3 --version` or `py --version` in your terminal.
If you do not have Python installed, please download and install it from the [official Python website](https://www.python.org/downloads/).

### Installation

Clone the repository to your local machine:

```bash
git clone https://github.com/duckynet/duckynet.com.git
cd duckynet.com
```

Set up the project using the provided start scripts:

- On Unix-based systems (Linux/Mac):
  ```bash
  ./start/start
  ```
- On Windows:
  ```powershell
  .\start\start.ps1
  ```

These scripts will create a virtual environment, install required dependencies, and start a local MkDocs server.

## Running the Project

After running the start scripts, the MkDocs server will be up and running. Access it at `http://localhost:8000` to view the project documentation.

## Project Structure

- `.vscode/settings.json`: Editor settings for Visual Studio Code.
- `assets/`: Contains static assets like logos.
- `src/`: Main source directory.
  - `docs/`: Markdown files for documentation.
  - `overrides/`: Custom HTML templates.
  - `mkdocs.yml`: Configuration file for MkDocs.
  - `requirements.txt`: Python dependencies.
- `start` and `start.ps1`: Startup scripts for Unix and Windows systems respectively.

## Contributing

We appreciate contributions! Please read [CONTRIBUTING.md](https://github.com/duckynet/duckynet.com/contributing.md) for guidelines on how to contribute.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

- Special thanks to the contributors and community members who have made this project possible.
- Our friendly rubber ducky, for making learning fun and engaging.
- Made with [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
