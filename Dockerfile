FROM arm32v7/node:slim
RUN apt-get update \
    && apt-get install -y --no-install-recommends git \
    && apt-get install -y --no-install-recommends python \
    && apt-get install -y build-essential \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /opt/hap-nodejs
RUN git clone https://github.com/KhaosT/HAP-NodeJS.git .
RUN npm install
CMD ["node", "Core.js"]