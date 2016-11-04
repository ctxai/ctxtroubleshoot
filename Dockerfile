FROM ubuntu:12.04
MAINTAINER Candidate @ Ctx  <candidate@caltex.com.au>
LABEL "name"="Troubleshooting Test" 
USER root
ENV PY_DIR /home/dev
RUN apt-get update && apt-get install -y \
    python2.6 \
    software-properties-common \
    build-essential \
    python-pip \ 
    python-dev 

COPY requirements.txt troubleshoot.ipynb  bootstrap.sh /home/dev/
RUN chmod -R -x /home/dev
RUN pip3 install  requirements.txt

ENTRYPOINT ["/home/dev/bootstrap.sh"]
CMD ["pythonrun"]
