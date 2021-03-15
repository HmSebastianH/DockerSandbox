FROM unityci/editor:2019.4.21f1-linux-il2cpp-0.10

RUN apt-get -q update \
  && apt-get -q install -y --no-install-recommends --allow-downgrades \
    libnotify4 \
    libunwind-dev \
    libssl1.0  \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*