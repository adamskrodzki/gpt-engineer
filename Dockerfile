# Use official Python runtime as a parent image
FROM python:3.9

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

RUN chmod +x /app/load-envs.sh
RUN chmod +x /app/idle.sh
RUN chmod +x /app/start.sh


# Run load-envs.sh when the container launches

CMD /app/idle.sh