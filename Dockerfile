FROM alpine:3.9
LABEL maintainers="FSaaS Authors"
LABEL description="CSI Plugin for IBM Spectrum Scale"

COPY _output/csi-spectrum-scale /csi-spectrum-scale
RUN chmod +x /csi-spectrum-scale
ENTRYPOINT ["/csi-spectrum-scale"]
