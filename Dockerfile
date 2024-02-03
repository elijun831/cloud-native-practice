# Base image
FROM python:3.11-slim-buster

# Install required system packages 
RUN pip3 install --upgrade pip
RUN pip3 install jupyter -U && pip3 install jupyterlab
RUN pip3 install \
    qsharp \
    azure-quantum \
    ipykernel \
    ipympl

# Expose port for Jupyter Notebook
EXPOSE 8888

# Set up work directory
WORKDIR /app

# Copy code and notebooks
COPY . /app

# Create non-root user for security
RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app

# Make sure that Jupyter is on the notebook users' path.
ENV PATH=$PATH:/usr/local/bin \
    JUPYTER_ROOT=/usr/local/bin

USER appuser

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
