#!/bin/bash

# Function to start the environment
start_environment() {
    echo "Starting $1 environment..."

    if [ "$1" = "dev" ]; then
        export NODE_ENV=${DEV_NODE_ENV}
        export SPRING_PROFILES_ACTIVE=${DEV_SPRING_PROFILES_ACTIVE}
    else
        export NODE_ENV=${NODE_ENV}
        export SPRING_PROFILES_ACTIVE=${SPRING_PROFILES_ACTIVE}
    fi

    docker compose up --build
}

# Function to stop the environment
stop_environment() {
    echo "Stopping the environment..."
    docker compose down
}

# Check if the first argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 {dev|prod}"
    exit 1
fi

# Start the specified environment
if [ "$1" = "dev" ] || [ "$1" = "prod" ]; then
    trap stop_environment EXIT
    start_environment $1
else
    echo "Invalid argument. Please use 'dev' or 'prod'."
    exit 1
fi
