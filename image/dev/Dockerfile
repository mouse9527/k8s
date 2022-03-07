FROM curlimages/curl as build
WORKDIR /home/curl_user
RUN curl -LO https://registry.mouse.center:1443/repository/raw-hosted/glowroot/glowroot-0.13.6-dist.zip
RUN unzip glowroot-0.13.6-dist.zip
RUN curl -LO

FROM curlimages/curl
USER root
RUN mkdir /agents

COPY --from=build /home/curl_user/glowroot /agents
