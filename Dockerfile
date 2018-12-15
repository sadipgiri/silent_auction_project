# use an official Python runtime as a parent image
FROM python:3.6.2

# set the working directory to /app
WORKDIR /app

# copy the current directory contents into the container at /app
ADD . /app

# install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# # make port 80 available to the world outside this container
# EXPOSE 80

# define environment variable
ENV NAME World

# run app.py when the container launches
CMD ["python", "app.py"]