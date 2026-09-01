
#!/bin/bash

# ==============================================================================
# Assignment: Linux mv Command Operations
# Aim: To move or rename files and directories using the Linux mv command.
# ==============================================================================

echo "=== Starting Linux mv Command Assignment ==="

# Setup: Creating a dummy environment for demonstration purposes
mkdir -p source_dir dest_dir multi_move_dir nested_dir
echo "This is file 1" > file1.txt
echo "This is file 2" > file2.txt
echo "This is file 3" > file3.txt
echo "This is file 4" > file4.txt

# ------------------------------------------------------------------------------
# Objective 1: Move a file from one directory to another
# ------------------------------------------------------------------------------
echo "Executing Objective 1: Moving file1.txt to source_dir/..."
mv file1.txt source_dir/


# ------------------------------------------------------------------------------
# Objective 2: Rename a file using mv
# ------------------------------------------------------------------------------
echo "Executing Objective 2: Renaming file2.txt to renamed_file2.txt..."
mv file2.txt renamed_file2.txt


# ------------------------------------------------------------------------------
# Objective 3: Move multiple files into a directory
# ------------------------------------------------------------------------------
echo "Executing Objective 3: Moving file3.txt and file4.txt into multi_move_dir/..."
mv file3.txt renamed_file2.txt multi_move_dir/


# ------------------------------------------------------------------------------
# Objective 4: Move a directory into another directory
# ------------------------------------------------------------------------------
echo "Executing Objective 4: Moving nested_dir/ inside dest_dir/..."
mv nested_dir dest_dir/


# ------------------------------------------------------------------------------
# Objective 5: Use relative paths in Linux shell commands
# ------------------------------------------------------------------------------
echo "Executing Objective 5: Moving a file using a relative path (../)..."
# Changing directory to demonstrate relative path navigation
cd source_dir
mv file1.txt ../dest_dir/
cd ..

echo "=== All mv operations executed successfully ==="

chmod +x mv_operations.sh

./mv_operations.sh
