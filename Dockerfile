FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/sdk:9.0 AS builder

WORKDIR /build

RUN apt-get update -y && \
  apt-get install -y curl git unzip xz-utils zip libglu1-mesa && \
  git config --global --add safe.directory '*' && \
  curl -o flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.35.2-stable.tar.xz && \
  tar -xf flutter.tar.xz

ENV PATH="$PATH:/build/flutter/bin"

COPY ui ui

RUN cd ui && \
  flutter build web --wasm

COPY src src

RUN cd src && \
  dotnet publish Core -c Release -o build

FROM mcr.microsoft.com/dotnet/aspnet:9.0

WORKDIR /app

COPY --from=builder /build/src/build .

COPY --from=builder /build/ui/build/web wwwroot

ENTRYPOINT ["dotnet", "/app/Core.dll"]
