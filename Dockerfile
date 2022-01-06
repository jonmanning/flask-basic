FROM alpine:3.15.0

ENV VIRTUAL_ENV=/opt/venv
COPY ./src /src
WORKDIR /src

RUN echo "@community https://dl-cdn.alpinelinux.org/alpine/v3.15/community" >> /etc/apk/repositories && \
    apk --no-cache --update-cache add \
    build-base \
    bash \
    freetype-dev \
    gcc \
    g++ \
    gfortran \
    libpng-dev \
    nano \
    openblas-dev \
    python3 \
    python3-dev \
    py3-matplotlib@community \
    py3-numpy@community \
    py3-pandas@community \
    py3-pip \
    py3-scipy@community \
    py3-setuptools \
    wget && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h && \
    python3 -m venv $VIRTUAL_ENV && \
    python3 -m pip install --upgrade pip && \
    pip3 install -r requirements.txt

ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN flask init-db


CMD [ "flask", "run", "--host=0.0.0.0" ]

# Moved these to .flaskenv file to keep with best practices
# ENV FLASK_APP=main.py
# ENV FLASK_ENV=development
# ENV FLASK_DEBUG=true

# RUN . /opt/venv/bin/activate && \
#     apk --update add \
#     build-base \
#     bash \
#     linux-headers \
#     musl-dev \
#     nano \
#     gcc && \
#     # python -m pip install --upgrade pip && \
#     pip install -r requirements.txt

# EXPOSE 5000
# this does not seem to work
# ENTRYPOINT [ "flask" ]

# this works now!!!


# this works
# CMD ["python", "main.py"]