    # Use an official Python runtime as the base image
FROM python:3.8


# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN make setup
RUN pip install prince==0.6.2
RUN pip install scikit-learn==0.24.1

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run viseagull command when the container launches
CMD ["sh", "-c", "viseagull \"$url\""]