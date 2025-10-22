FROM alpine:3.19

RUN echo "https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/main" > /etc/apk/repositories \
 && echo "https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/community" >> /etc/apk/repositories \
 && apk update \
 && apk add --no-cache openssh bash \
 && echo "root:root123" | chpasswd \
 && mkdir -p /var/run/sshd \
 && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
 && sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config \
 && ssh-keygen -A

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENV FLAG=your_flag_value
EXPOSE 22

CMD ["/start.sh"]
