FROM alpine:latest AS rgbds-build
RUN apk add g++ make bison pkgconfig libpng-dev git
RUN git clone https://github.com/gbdev/rgbds && \
    cd rgbds && \
    git checkout v1.0.1 && \
    make -j$(nproc) && \
    make install

FROM alpine:latest AS medarot1
LABEL authors="Xerat0nin"

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /usr/local/bin/
COPY --from=rgbds-build /usr/local/bin/rgbasm /usr/local/bin/rgbfix /usr/local/bin/rgbgfx /usr/local/bin/rgblink /usr/local/bin/

RUN apk add libstdc++ libpng make

WORKDIR /medarot

RUN --mount=type=cache,target=/root/.cache/uv \
    --mount=type=bind,source=uv.lock,target=uv.lock \
    --mount=type=bind,source=pyproject.toml,target=pyproject.toml \
    uv sync --locked --no-install-project

COPY . /medarot

RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --locked
