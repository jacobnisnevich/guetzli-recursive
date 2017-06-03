# Recursive Guetzli

## About

Recursive Guetzli is a script that runs Google's [perceptual JPEG encoder](https://github.com/google/guetzli) recursively on each file in a directory.

## Installation (Mac OS X Instructions)

### Part 1: Ruby Installation

1. Verify that you have Ruby installed with `ruby -v`. If you have Ruby installed skip to Part 2.

2. If you do not have Ruby installed simply install it with Homebrew: `brew install ruby`.

### Part 2: Guetzli Installation

1. Navigate to your Downloads folder with `cd ~/Downloads`.

2. Clone the GitHub guetzli repository with `git clone https://github.com/google/guetzli.git`. If you do not have git installed, install it with Homebrew: `brew install git`.

3. Navigate to the newly cloned repository: `cd guetzli`.

4. Build the binary from sources with `make`.

5. The binary should output to `bin/Release/guetzli`.

### Part 3: Running the Script

1. Navigate to the root of your project folder.

2. Download the `guetzli-rec.rb` file to here.

3. Copy the `guetzli` binary from `~/Downloads/guetzli/bin/Release/guetzli` to here.

4. Run the script with `./guetzli-rec.rb`.

5. If you get `Memory limit would be exceeded. Failing.`, adjust the memory limit by passing it as an argument. The default limit is 6000 MB. For example, to run it with 8000 MB, run the scripts with `./guetzli-rec.rb 8000`. Note: Google recommends 300MB of memory per 1MPix of the input image.
