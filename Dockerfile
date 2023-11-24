# Use an official python image as base image
FROM python:3.8-slim-buster 


#Set working directrory in the container
WORKDIR /app

#copy the contents from current directory into container
COPY . /app/

#upgrade pip
RUN pip install --upgrade pip

#install any needed packages
RUN pip install --no-cache-dir -r requirments.txt

#set the default command to run when starting the container
CMD [ "python", "app.py" ]
