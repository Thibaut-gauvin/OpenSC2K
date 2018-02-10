FROM node:8.6


# Install required lib
RUN apt-get update -qq \
    && apt-get install -y \
        libxss1 \
        libnss3 \
        libgconf-2-4 \
        libgconf2-dev \
        libasound2 \
        libxtst-dev \
        libnotify-bin \
        libgtk2.0-0 \
        libgtkextra-dev \
        libcanberra-gtk-module \
        libcanberra-gtk3-module \
        xvfb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && cd -


# Build app
WORKDIR /app
COPY . /app
RUN cd /app && npm install


# Copy custom entrypoint
COPY .docker/entrypoint.sh /root/entrypoint.sh


# Default values when container start
# can be overridden in docker-compose.yml
ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]
CMD ["npm", "start"]
