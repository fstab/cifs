FROM busybox:1.29.3

COPY fstab~cifs /
COPY install.sh /usr/local/bin/
RUN mkdir /flexmnt
RUN chmod +x /usr/local/bin/install.sh

CMD ["/usr/local/bin/install.sh"]