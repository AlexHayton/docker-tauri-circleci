FROM cimg/node:lts

# Install dependencies
RUN sudo apt-get update && \ 
    sudo apt-get install -y libwebkit2gtk-4.0-dev \
        build-essential \
        curl \
        wget \
        libssl-dev \
        libgtk-3-dev \
        squashfs-tools \
        libgtksourceview-3.0-dev \
        libappindicator3-dev \
        libclang-dev && \
    sudo apt-get clean

# Install Rust
RUN curl https://sh.rustup.rs -sSf | \
    sh -s -- --default-toolchain stable -y

ENV PATH=/root/.cargo/bin:$PATH