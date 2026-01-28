#!/bin/bash

# Create output directory
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
mkdir -p out

# Compile
echo "Compiling..."
javac -cp ".:mysql-connector-j-8.3.0.jar" -d out src/*.java

if [ $? -eq 0 ]; then
    echo "Compilation successful. Running..."
    # Run
    java -cp "out:mysql-connector-j-8.3.0.jar" CanteenManagement
else
    echo "Compilation failed."
fi
