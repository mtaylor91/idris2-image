FROM images.home.mtaylor.io/base:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y build-essential chezscheme curl git libgmp-dev
RUN echo "chezscheme" | bash -c "$(curl -fsSL https://raw.githubusercontent.com/stefan-hoeck/idris2-pack/main/install.bash)"
RUN ln -s /root/.pack/bin/idris2 /usr/local/bin/idris2 && \
  ln -s /root/.pack/bin/pack /usr/local/bin/pack && \
  ln -s /root/.pack/bin/pack_app /usr/local/bin/pack_app
