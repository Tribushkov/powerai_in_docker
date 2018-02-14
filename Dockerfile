FROM nvidia/cuda-ppc64le:8.0-cudnn6-devel-ubuntu16.04

COPY ppc64le/* /ppc64le/
RUN /ppc64le/powerai.sh
RUN /ppc64le/jdk_maven.sh
