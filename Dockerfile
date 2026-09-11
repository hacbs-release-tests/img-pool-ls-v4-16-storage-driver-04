FROM registry.access.redhat.com/ubi9/ubi:latest
RUN dnf install -y python3 && dnf clean all
ARG IMAGE_SIZE_MB=461
RUN dd if=/dev/urandom of=/opt/data.bin bs=1M count=${IMAGE_SIZE_MB} 2>/dev/null
LABEL name="rhtap/large-snapshot-component"
LABEL cpe="cpe:/a:redhat:rhtap_large_snapshot:1::el9"
LABEL konflux.additional-tags="stable"
