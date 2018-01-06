# Use Caffee base image
FROM bvlc/caffe:cpu

# Install Python Dependencies to run google's project							
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt


# RUN git clone https://github.com/google/deepdream.git
COPY ./deepdream /workspace/deepdream
WORKDIR /workspace/deepdream

COPY ./bvlc_googlenet.caffemodel /opt/caffe/models/bvlc_googlenet/bvlc_googlenet.caffemodel

EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='demo'
