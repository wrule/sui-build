#!/bin/sh
apt update
apt install curl wget git-all pkg-config libssl-dev libclang-dev llvm clang

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update stable
cargo install --locked --git https://github.com/MystenLabs/sui.git --branch "devnet" sui sui-gateway
