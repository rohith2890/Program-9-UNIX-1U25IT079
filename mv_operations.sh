#!/bin/bash

# Ensure execution stops if any command fails
set -e

echo "Starting mv command operations assignment..."

# Setup: Creating a dummy environment for demonstration
mkdir -p source_dir target_dir multipath_dir inner_dir
touch file1.txt file2.txt file3.txt move_me.txt rename_me.txt

# -------------------------------------------------------------
# 1. Move a file from one directory to another
# -------------------------------------------------------------
echo "Task 1: Moving move_me.txt to target_dir/"
mv move_me.txt target_dir/

# -------------------------------------------------------------
# 2. Rename a file using mv
# -------------------------------------------------------------
echo "Task 2: Renaming rename_me.txt to renamed_file.txt"
mv rename_me.txt renamed_file.txt

# -------------------------------------------------------------
# 3. Move multiple files into a directory
# -------------------------------------------------------------
echo "Task 3: Moving file1.txt, file2.txt, and file3.txt into multipath_dir/"
mv file1.txt file2.txt file3.txt multipath_dir/

# -------------------------------------------------------------
# 4. Move a directory into another directory
# -------------------------------------------------------------
echo "Task 4: Moving inner_dir/ into source_dir/"
mv inner_dir source_dir/

# -------------------------------------------------------------
# 5. Use relative paths in Linux shell commands
# -------------------------------------------------------------
echo "Task 5: Moving a file from source_dir/inner_dir using relative paths"
# Creating a file inside the nested directory
touch source_dir/inner_dir/relative_test.txt
# Moving it up to the current working directory using relative paths
mv ./source_dir/inner_dir/relative_test.txt ./

echo "All tasks executed successfully!"

nano mv_operations.sh

chmod +x mv_operations.sh

./mv_operations.sh
