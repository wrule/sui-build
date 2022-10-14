#!/bin/sh
apt update
apt install curl wget git-all pkg-config libssl-dev libclang-dev llvm clang

wget https://github.com/Kitware/CMake/releases/download/v3.24.2/cmake-3.24.2.tar.gz
tar xvzf cmake-3.24.2.tar.gz
cd cmake-3.24.2
./bootstrap
make
make install

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update stable
cargo install --locked --git https://github.com/MystenLabs/sui.git --branch "devnet" sui sui-gateway
