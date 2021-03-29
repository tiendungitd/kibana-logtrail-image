FROM kibana:7.9.2
ENV KIBANA_VER=7.9.2
RUN kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.31/logtrail-${KIBANA_VER}-0.1.31.zip
USER root
RUN rm -rf /usr/share/kibana/plugins/logtrail/logtrail.json
RUN mkdir /config
COPY logtrail.json /config/
RUN ln -s /config/logtrail.json /usr/share/kibana/plugins/logtrail/logtrail.json
USER kibana