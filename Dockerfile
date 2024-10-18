FROM ubuntu:20.04
LABEL maintainer="TranPhan <tranb2111961@student.ctu.edu.vn>"
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /flask_app
COPY . /flask_app
RUN pip3 install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
