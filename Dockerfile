FROM mcr.microsoft.com/azure-cli:2.37.0

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
