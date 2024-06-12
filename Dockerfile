# Use an official Python runtime as a parent image
FROM python:3.10.13-slim

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir tqdm notebook==7.1.2 openai elasticsearch pandas scikit-learn

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run jupyter notebook when the container launches
# CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]

CMD ["/bin/bash"]