FROM python:3-slim-buster
RUN groupadd -g 1001 ansible && useradd -m -u 1001 -g 1001 ansible
RUN /usr/local/bin/python3 -m pip install ansible==2.9.1
USER ansible
CMD ["ansible", "--version"]