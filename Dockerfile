FROM kibana:7.9.2
ENV KIBANA_VER=7.9.2
RUN kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.31/logtrail-${KIBANA_VER}-0.1.31.zip
