# Use the official Debian base image with a specific tag
FROM debian:bullseye-slim

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive

# Update the package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        && rm -rf /var/lib/apt/lists/*

# Additional steps to customize your image
RUN apt-get install curl
#
# Set the default command to run when the container starts
CMD ["/bin/bash"]
#