#This Dockerfile is for multistage build image

# STAGE 1
#Base image
FROM python:3.9 AS big_stage

#Setting Working directory for container
WORKDIR /app

#Copy the files from host to container
COPY . .


# STAGE 2
#Base image
FROM python:3.9-slim-bullseye

#Setting working directory
WORKDIR /data

#Copy things 
COPY --from=big_stage /app .

#Install the dependencies
RUN pip install -r requirements.txt

#Run the app when container is launched
CMD ["python", "app.py"]
