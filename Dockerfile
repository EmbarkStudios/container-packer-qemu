FROM alpine
ENV PACKER_VERSION=1.4.1
RUN apk add -U --no-cache bash ca-certificates qemu-img qemu-system-x86_64
RUN (wget -qO- https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip | unzip -d /usr/local/bin/ -) && \
    chmod 755 /usr/local/bin/packer
ENV PACKER_LOG=1
ENTRYPOINT [ "/usr/local/bin/packer" ]
