FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh"]

RUN ["/bin/bash", "-c", "curl -L https://aka.ms/InstallAzureCli | bash"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
