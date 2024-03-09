# Use an official Ubuntu runtime as a parent image
FROM ubuntu:22.04

# Install Python, pip, and other dependencies, then clean up in one RUN command to minimize layer size
RUN apt-get update && \
    apt-get install -y wget python3.11 python3-pip ffmpeg libsm6 libxext6 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


# Install Python libraries in one RUN command to minimize layer size
RUN pip3 install --no-cache-dir pix2text pydantic fastapi python-multipart uvicorn

# Set the working directory in the container to /root
WORKDIR /root

RUN mkdir -p /root/.cnstd/1.2/analysis/ /root/.cnocr/2.3/densenet_lite_666-gru_large/
RUN wget "https://alist.zoxi.org/d/Share/mfd-yolov7-20230208.pt?sign=Au9iA3CdIdabWRDJ3PM7N_xlMP1vLfGcj76Wp8Ir4kc=:0" -O /root/.cnstd/1.2/analysis/mfd-yolov7.pt
RUN wget "https://alist.zoxi.org/d/Share/cnocr-v2.3-densenet_lite_666-gru_large-epoch%3D004-ft-model.onnx?sign=N8g3fTytUgFyYbP95-TaHEgzMp4A6xpm5Y8bakV1GOA=:0" -O /root/.cnocr/2.3/densenet_lite_666-gru_large/cnocr-v2.3-densenet_lite_666-gru_large-epoch=004-ft-model.onnx


# Expose port 8503 for the p2t serve command
EXPOSE 8503

# Run p2t serve command when the container launches
CMD ["p2t", "serve", "-l", "en,ch_sim", "-a", "mfd", "-t", "yolov7", "--text-ocr-config", "{\"rec_model_name\": \"densenet_lite_666-gru_large\"}"]