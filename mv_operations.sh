#!/bin/bash

# Ensure a clean workspace for demonstration
echo "Setting up demo files and directories..."
mkdir -p source_dir target_dir parent_dir/child_dir
echo "Hello World" > file1.txt
echo "Test File" > file2.txt
echo "Data File" > file3.txt
echo "----------------------------------------"

# 1. Move a file from one directory to another
echo "1. Moving file1.txt to target_dir/..."
mv file1.txt target_dir/

# 2. Rename a file using mv
echo "2. Renaming file2.txt to renamed_file.txt..."
mv file2.txt renamed_file.txt

# 3. Move multiple files into a directory
echo "3. Moving renamed_file.txt and file3.txt to target_dir/..."
mv renamed_file.txt file3.txt target_dir/

# 4. Move a directory into another directory
echo "4. Moving target_dir/ into parent_dir/..."
mv target_dir parent_dir/

# 5. Use relative paths in Linux shell commands
echo "5. Using relative paths to move a file from inside parent_dir..."
# Moving the child directory up one level relatively
mv parent_dir/child_dir ./moved_child_dir

echo "----------------------------------------"
echo "Operations complete! Current directory contents:"
ls -R parent_dir moved_child_dir
