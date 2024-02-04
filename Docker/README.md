# QSharp

This repository contains a Dockerfile for setting up a Python environment with QSharp and Azure Quantum.

## Prerequisites

You should install Docker in your machine (https://docs.docker.com/desktop/).

## Getting Started

Follow these steps to get the environment up and running.

1. Clone the repository:
```
git clone https://github.com/elijun831/qsharp
```

2. Navigate to the directory containing the Dockerfile by typing the following in your terminal:
```
cd qsharp/Docker
```

3. Build the Docker image:
```
docker build -t qsharp .
```

4. Run the Docker container:
```
docker run -p 8888:8888 qsharp
```

5. After running the Docker container, you should see a URL in the terminal output that looks like this:
```
http://localhost:8888/tree?token=[[token]]
## or
http://127.0.0.1:8888/tree?token=[[token]]
```
Copy the [[token]] and paste it in your Jupyter log-in webpage to access the Jupyter Notebook server.
