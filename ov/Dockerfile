FROM ubuntu:18.04
ENV TZ=America/Los_Angeles
COPY Minecraft-Overviewer /overviewer
WORKDIR /overviewer
RUN ln -snf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime \
    && echo $TZ > /etc/timezone \
    && apt-get update \
    && apt-get install -y \
        build-essential \
        python3-pil \
        python3-dev \
        python3-numpy \
        git \
        wget \
        optipng \
        tzdata \
    && rm -rf /var/lib/apt/lists/* \
    && python3 setup.py build \
    && mkdir octoLand render \
    && touch overviewer.log \
    && wget -O client.jar https://overviewer.org/textures/1.16 \
    && groupadd -g 1000 ov \
    && useradd -u 1000 -g 1000 ov \
    && chown -R 1000:1000 /overviewer
COPY overviewer.sh /overviewer
COPY settings.py /overviewer
USER ov
CMD ["tail", "-F", "/overviewer/overviewer.log"]
