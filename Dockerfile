FROM alpine:latest
RUN apk add libstdc++ \
    && apk add icu-libs \
    && apk add libintl \
    && mkdir -p /bin/dotnet-sdk \
    && cd /bin/dotnet-sdk \
    && wget -O dotnet-sdk.tar.gz https://download.visualstudio.microsoft.com/download/pr/fb0df4d9-da42-4fc2-a824-6f8e746c5f70/64edd91c05d5d24b08c69dd0f0dcb5c2/dotnet-sdk-2.2.402-linux-musl-x64.tar.gz \
    && tar xzf dotnet-sdk.tar.gz \
    && rm -rf dotnet-sdk.tar.gz

CMD [ "/bin/dotnet-sdk/dotnet" ]
