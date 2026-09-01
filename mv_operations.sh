#!/bin/bash

# Ensure script stops if an error occurs
set -e

echo "=== Starting mv command operations ==="

# -------------------------------------------------------------
# Setup: Creating temporary files and directories for demonstration
# -------------------------------------------------------------
mkdir -p dir1 dir2 destination_dir
touch file1.txt file2.txt file3.txt rename_me.txt

# 1. Move a file from one directory to another
echo "1. Moving file1.txt into dir1..."
mv file1.txt dir1/

# 2. Rename a file using mv
echo "2. Renaming rename_me.txt to choice.txt..."
mv rename_me.txt choice.txt

# 3. Move multiple files into a directory
echo "3. Moving file2.txt and file3.txt into dir2..."
mv file2.txt file3.txt dir2/

# 4. Move a directory into another directory
echo "4. Moving dir1 into destination_dir..."
mv dir1 destination_dir/

# 5. Use relative paths in Linux shell commands
echo "5. Using relative paths to move choice.txt..."
# Moving from the current directory into the newly nested dir1 directory
mv ./choice.txt ./destination_dir/dir1/

echo "=== All operations completed successfully ==="
