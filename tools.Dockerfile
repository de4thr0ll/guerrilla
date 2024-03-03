FROM fedora

COPY dnf.conf /etc/dnf/dnf.conf

RUN dnf install -y qrencode jq

RUN useradd guerrilla

USER guerrilla

WORKDIR /home/guerrilla

COPY tools/ tools/

ENV PATH=$PATH:/home/guerrilla/tools
