#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker image build -t flask_docker .

# Step 2: 
# Run flask app
docker run -p 5000:5000 -d flask_docker