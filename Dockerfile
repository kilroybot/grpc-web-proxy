ARG ENVOY_IMAGE_TAG=v1.23.1

FROM envoyproxy/envoy:$ENVOY_IMAGE_TAG

WORKDIR /app

COPY ./grpc-web-proxy/start.sh ./start.sh
RUN chmod +x ./start.sh

COPY ./grpc-web-proxy/conf/ ./conf/

ENV GRPC_WEB_PROXY_PORT=13000 \
    GRPC_WEB_PROXY_TARGET_HOST=localhost \
    GRPC_WEB_PROXY_TARGET_PORT=12000

EXPOSE 13000

ENTRYPOINT ["./start.sh"]
CMD []
