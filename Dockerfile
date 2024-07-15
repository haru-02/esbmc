# Use an official Ubuntu base image
FROM ubuntu:22.04

# Set non-interactive mode for APT
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages and create a non-root user
#RUN apt-get update && apt-get install -y \
#    cmake \
#    ninja-build \
#    build-essential \
#    python3 \
#    python3-pip \
#    sudo

# Set the working directory to /home/dockeruser/project
WORKDIR /home/esbmc

# Copy the project files into the container
COPY . .

RUN bash dockerscript.sh
# Create the build directory
#RUN mkdir build && cd build

# Configure the project
#RUN cmake .. -GNinja -DENABLE_SOLIDITY_FRONTEND=On -DBUILD_TESTING=On -DENABLE_REGRESSION=1 -DDOWNLOAD_DEPENDENCIES=ON -DENABLE_PYTHON_FRONTEND=On

# Build the project and install it
#RUN cmake --build . -- -j4 && sudo ninja install

