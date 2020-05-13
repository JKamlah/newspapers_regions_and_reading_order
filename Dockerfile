FROM tensorflow/tensorflow:1.15.2-gpu-py3

WORKDIR /home/nrr/
COPY requirements.txt ./
COPY sbb_newspapers/sbb_newspapers.py ./

RUN apt-get update \
    && apt-get install --no-install-recommends -y vim libsm6 libxext6 libxrender-dev \ 
    && pip3 install -r ./requirements.txt 

LABEL name="Newspaper-Reagion-and-Readingorder"

ENTRYPOINT ["python", "sbb_newspapers.py"]
