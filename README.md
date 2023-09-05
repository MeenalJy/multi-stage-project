# Multistage Docker Build with Flask Web Application

This project demonstrates the concept of Multistage build in Docker using a Flask web application. It illustrates the difference in image size between a normal image build and a multi-stage image build.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Screenshots](#screenshots)
  - [Dockerfile of Normal Image](#dockerfile-of-normal-image)
  - [Dockerfile of Multi-stage Image](#dockerfile-of-multi-stage-image)
  - [Size Difference](#size-difference)
-

## Introduction

Docker is a powerful tool for containerization, and one of its features is multistage builds. Multistage builds allow us to create smaller, more efficient Docker images by separating the build environment from the runtime environment.

In this project, we demonstrate how to use multistage builds to create a Docker image for a Flask web application. We also compare the image size between a normal build and a multistage build to highlight the advantages of the latter.

## Prerequisites

Before you begin, ensure you have the following prerequisites:

- [Docker](https://www.docker.com/) installed on your system.
- Basic knowledge of Docker commands.

## Project Structure

The project structure is as follows:

```
multistage-docker-flask/
├── app/
│   ├── app.py
│   ├── requirements.txt
├── Dockerfile
├── README.md
```

- `app/`: Contains the Flask web application and its dependencies.
- `Dockerfile`: Defines the multistage Docker build.
- `README.md`: You're reading it!

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/multistage-docker-flask.git
   cd multistage-docker-flask
   ```

2. Build the Docker image using the multistage Dockerfile:

   ```bash
   docker build -t multistage-flask-app .
   ```

3. Run the Docker container:

   ```bash
   docker run -p 5000:5000 multistage-flask-app
   ```

4. Access the Flask web application in your browser at `http://localhost:5000`.

## Screenshots

### Dockerfile of Normal Image

![Dockerfile of Normal Image](screenshots/dockerfile-normal.png)

### Dockerfile of Multi-stage Image

![Dockerfile of Multi-stage Image](screenshots/dockerfile-multistage.png)

### Size Difference

![Size Difference](screenshots/size-difference.png)

