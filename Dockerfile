FROM ruby:2.4

# Arguments from docker build proccess
ARG CFN_NAG_VERSION

# Environment variables
ENV CFN_NAG_VERSION=${CFN_NAG_VERSION:-0.3.68} \
  CFN_NAG_HOME="/work"

# Container's Labels
LABEL maintainer="Christian González Di Antonio <christiangda@gmail.com>" \
  org.opencontainers.image.authors="Christian González Di Antonio <christiangda@gmail.com>" \
  org.opencontainers.image.url="https://github.com/christiangda/docker-cfn-nag" \
  org.opencontainers.image.documentation="https://github.com/christiangda/docker-cfn-nag" \
  org.opencontainers.image.source="https://github.com/christiangda/docker-cfn-nag" \
  org.opencontainers.image.version=${CFN_NAG_VERSION} \
  org.opencontainers.image.vendor="Christian González Di Antonio <christiangda@gmail.com>" \
  org.opencontainers.image.licenses="MIT License" \
  org.opencontainers.image.title="cfn-nag tool" \
  org.opencontainers.image.description="Just another cfn-nag docker image"

# install neccesary packages and kafka
RUN gem install cfn-nag --version ${CFN_NAG_VERSION} --no-format-exec

# Workdir path
WORKDIR ${CFN_NAG_HOME}

# Force any command provision the container
ENTRYPOINT ["cfn_nag_scan"]

# Default command to run on boot
CMD ["--help"]
