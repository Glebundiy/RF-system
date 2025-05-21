FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y python3 python3-pip wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY search_path.sh /usr/local/bin/search_path.sh
COPY extract_path_value.py /usr/local/bin/extract_path_value.py
COPY config.txt /tmp/config.txt

RUN chmod +x /usr/local/bin/search_path.sh /usr/local/bin/extract_path_value.py

WORKDIR /tmp
