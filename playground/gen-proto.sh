#! /usr/bin/env bash

set -x

CURRENT_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
protoc  --plugin=protoc-gen-haskell-protolens=${CURRENT_DIR}/bin/proto-lens-protoc  \
        --haskell-protolens_out=./gen  \
        ./protos/raft-grpc.proto