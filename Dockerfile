# Use an official Node runtime as a parent image
FROM node:8

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN npm install

# Make port available to the world outside this container
EXPOSE 80

# Run app.js when the container launches
CMD ["npm", "start"]
