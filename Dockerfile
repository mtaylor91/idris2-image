FROM images.home.mtaylor.io/base:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y build-essential chezscheme curl git libgmp-dev
RUN echo "chezscheme" | bash -c "$(curl -fsSL https://raw.githubusercontent.com/stefan-hoeck/idris2-pack/main/install.bash)"
