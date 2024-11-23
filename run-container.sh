#!/bin/bash

# Script to pull, run, and manage the Docker container for the Rapid Word to PDF project.

IMAGE_NAME="khushboosinghal25/rapidfortkhushboo:latest"
CONTAINER_NAME="rapid-word-to-pdf"

echo "Welcome to the Rapid Word to PDF container manager!"

# Function to pull the latest image
pull_image() {
  echo "Pulling the latest Docker image..."
  docker pull $IMAGE_NAME
  echo "Docker image pulled successfully!"
}

# Function to run the container
run_container() {
  echo "Running the container..."
  docker run -d --name $CONTAINER_NAME -p 8080:8080 $IMAGE_NAME
  echo "Container is running!"
  echo "Access the application at: http://localhost:8080"
}

# Function to view logs
view_logs() {
  echo "Fetching logs for the container..."
  docker logs -f $CONTAINER_NAME
}

# Function to stop and remove the container
cleanup() {
  echo "Stopping and removing the container..."
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
  echo "Container stopped and removed!"
}

# Menu options
while true; do
  echo "
  Select an option:
  1. Pull the latest Docker image
  2. Run the container
  3. View container logs
  4. Stop and remove the container
  5. Exit
  "
  read -p "Enter your choice [1-5]: " choice

  case $choice in
    1)
      pull_image
      ;;
    2)
      run_container
      ;;
    3)
      view_logs
      ;;
    4)
      cleanup
      ;;
    5)
      echo "Exiting. Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid choice. Please select a valid option."
      ;;
  esac
done
