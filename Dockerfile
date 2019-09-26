# Use an official Python runtime as a parent image
FROM node:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN yarn install

# Make port 80 available to the world outside this container
EXPOSE 1337

# Define environment variable
# ENV NAME World

# Run app.py when the container launches
CMD ["yarn", "start"]