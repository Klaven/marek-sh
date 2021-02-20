FROM debian:latest

ENV HUGO_VERSION 0.68.3
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.deb
# Download
# Make sure checksum matches
# RUN echo ${HUGO_SHA256}  /tmp/hugo.deb | sha256sum -c -
# Install Hugo & remove install package
RUN apt update
RUN apt install -y hugo git

COPY . /app
# Setup container to expose port and where to look for files
EXPOSE 1313
VOLUME /app
WORKDIR /app
RUN git submodule update --recursive

# Start the hugo server which is made available to localhost:1313
CMD ["hugo", "server", "--disableFastRender", "--bind=0.0.0.0"]