FROM debian

RUN apt update
RUN apt install openssh-server -y
RUN useradd -m guest -p "\$6\$hHWaoMKu\$abBLy6bXwPHAxDwx1aucYkbPIRUg9BQrtkJbeZ5Vz0c11mGYBGV6vPo5LWWVL3AGuLYprl/PiAI2khJAN9Lej/"
