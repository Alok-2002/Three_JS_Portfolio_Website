#!/bin/bash

# Change to the directory where your files are located
cd C:\coding in different different languages\Python Projects\Three_JS_Portfolio_Website\node_modules

# Loop through each file in the directory
for file in *; do
  # Check if the file is not a directory
  if [ -f "$file" ]; then
    # Stage the file for commit
    git add "$file"

    # Create a new commit with a commit message containing the current date and time
    git commit -m "Add $file $(date)"

    # Push the commit to the remote repository
    git push origin master
  fi
done
