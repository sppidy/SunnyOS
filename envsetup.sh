#!/bin/bash

# Function: m
# Usage: m [clean|continue]

m() {
  # Check if a target is provided
  if [ -z "$1" ]; then
    echo "Usage: m [cleanbuild|build]"
    return 1
  fi

  # Handle the targets
  case "$1" in
    cleanbuild)
      echo "Running clean..."
      # Add your clean logic here
      sudo chown salin work
      sudo rm -rf work
      echo "Clean completed."
      ;;
    build)
      echo "Running build..."
      # Add your continue logic here
      sudo mkarchiso -v profile
      ;;
    *)
      echo "Invalid target. Use 'cleanbuild' or 'build'."
      return 1
      ;;
  esac
}

echo ENVSETUP DONE.
