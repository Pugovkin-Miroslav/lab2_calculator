FROM ubuntu:22.04 AS builder

RUN rm -rf /var/lib/apt/lists/* && \
    apt-get clean && \
    apt-get update --fix-missing && \
    apt-get install -y \
    cmake \
    g++ \
    make \
    git \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .

RUN mkdir -p build && \
    cd build && \
    cmake .. && \
    make

FROM ubuntu:22.04
WORKDIR /app
COPY --from=builder /app/build/rpn_calculator .
CMD ["./rpn_calculator"]
