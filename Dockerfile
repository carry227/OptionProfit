# Use an official Python runtime as a parent image
FROM python:3.9-slim


# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir jupyterlab
RUN pip install pandas numpy matplotlib ipywidgets seaborn

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Define environment variable
ENV NAME OPTION-PROFILE

# Run jupyter lab when the container launches
CMD ["jupyter", "lab", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
