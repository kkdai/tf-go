FROM golang:1.8
RUN curl -L \
  "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-$(go env GOOS)-x86_64-1.0.0.tar.gz" | tar -C /usr/local -xz
RUN go get github.com/tensorflow/tensorflow/tensorflow/go
