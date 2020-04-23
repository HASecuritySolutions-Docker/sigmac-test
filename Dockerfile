FROM alpine:3.6

LABEL description="Sigma"
LABEL maintainer="Justin Henderson"

RUN apk --update upgrade && \
    apk add python3 git && \
    pip3 install --upgrade pip
RUN git clone https://github.com/Neo23x0/sigma.git
RUN pip3 install -r /sigma/tools/requirements.txt
    
WORKDIR /sigma
CMD ["python3", "/sigma/tools/sigmac"]
