FROM debian:12-slim

RUN apt update &&\
    apt install openssh-server rsync -y &&\
    useradd -m guest -p "\$6\$hHWaoMKu\$abBLy6bXwPHAxDwx1aucYkbPIRUg9BQrtkJbeZ5Vz0c11mGYBGV6vPo5LWWVL3AGuLYprl/PiAI2khJAN9Lej/"
RUN echo "PermitRootLogin no" >> /etc/ssh/sshd_config

# パスワード認証にする場合はこの行以降をコメントアウト
RUN mkdir /home/guest/.ssh &&\
    chmod 700 /home/guest/.ssh &&\
    chown guest:guest /home/guest/.ssh
COPY keys/id_rsa.pub /home/guest/.ssh/authorized_keys
RUN chmod 600 /home/guest/.ssh/authorized_keys &&\
    chown guest:guest /home/guest/.ssh/authorized_keys
RUN echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
