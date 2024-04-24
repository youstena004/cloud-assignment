# Dockerfile
FROM jupyter/base-notebook:latest

# Set the working directory
WORKDIR /dockerimages

# Copy the notebook and dataset into the container
#COPY notebook.ipynb /dockerimages/
COPY books.csv /dockerimages/

# Expose the port
EXPOSE 8888

# Command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
