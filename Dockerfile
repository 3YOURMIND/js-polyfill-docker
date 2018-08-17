# Node LTS
FROM node:8.11.3-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
	    git=1:2.1.4-2.1+deb8u6 \
	    python=2.7.9-1 \
	    make=4.0-8.1 \
	    gcc=4:4.9.2-2 \ 
	    g++=4:4.9.2-2 \
	    libc6-dev=2.19-18+deb8u10

RUN git clone https://github.com/Financial-Times/polyfill-service.git /polyfill

WORKDIR /polyfill

RUN npm run install

ENV PORT 8801
ENV NODE_ENV dev

EXPOSE ${PORT}

CMD ["node", "--optimize_for_size", "--max_old_space_size=460", "--gc_interval=100", "packages/polyfill-service/bin/polyfill-service"]

