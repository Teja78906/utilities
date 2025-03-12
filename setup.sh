rustup self uninstall
sudo apt --fix-broken install
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt install libc6
sudo apt install -y build-essential
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustc --version
rustup install nightly
rustup toolchain install nightly-2023-12-29
rustup override set nightly-2023-12-29
cargo install wasm-pack --locked --force
cargo clean
cargo build
cargo test
