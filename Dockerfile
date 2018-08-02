# Node LTS
FROM node:8.11.3-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        python \
        make \
        gcc \
        g++ \
        libc6-dev

RUN git clone https://github.com/Financial-Times/polyfill-service.git /polyfill

WORKDIR /polyfill

RUN npm run install

ENV PORT 8801
ENV NODE_ENV dev

EXPOSE ${PORT}

CMD ["node" ,"--optimize_for_size" ,"--max_old_space_size=460" ,"--gc_interval=100" ,"packages/polyfill-service/bin/polyfill-service"]

