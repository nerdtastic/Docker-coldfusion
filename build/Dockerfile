FROM centos:7

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum -y --setopt=tsflags=nodocs install unzip && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    rm -rf /etc/localtime && \
    ln -s /usr/share/zoneinfo/America/Detroit /etc/localtime

WORKDIR /stuffandthings

COPY assets/ .

COPY gvsu.conf /etc/httpd/conf.d/.

RUN chmod -v +x ColdFusion_2018_WWEJ_linux64.bin && \
	chmod -v +x start.sh && \
	mkdir -p /www/{gvsu,logs} && \
	rm -f /etc/localtime && \
	ln -sf /usr/share/zoneinfo/US/Estern /etc/localtime

RUN ./ColdFusion_2018_WWEJ_linux64.bin -f silent.properties

RUN /opt/coldfusion2018/cfusion/runtime/bin/wsconfig -ws Apache -bin /usr/sbin/httpd -script /usr/sbin/apachectl -dir /etc/httpd/conf/

RUN rm ColdFusion_2018_WWEJ_linux64.bin && \
	rm silent.properties

RUN chown apache:apache /www/gvsu

RUN yum -y --setopt=tsflags=nodocs install epel-release && \
    yum clean all && \
    rm -rf /var/cache/yum

CMD ["./start.sh"]
