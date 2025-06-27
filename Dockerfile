FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl gnupg ca-certificates && \
    curl -fsSL https://ollama.com/install.sh | sh && \
    apt-get install -y net-tools && apt-get clean

VOLUME ["/root/.ollama/models"]

CMD ["ollama", "serve"]

