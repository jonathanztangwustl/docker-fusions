FROM python:3.9

ENV PYTHONUNBUFFERED 1

RUN apt-get update -qq && apt-get install -qqy --no-install-recommends \
    python3-pip

RUN pip3 install numpy
RUN pip3 install pandas
RUN pip3 install pysam

COPY fusions.py /usr/bin/fusions.py
RUN chmod +x /usr/bin/fusions.py

