FROM ubuntu:22.04

COPY $GITHUB_WORKSPACE/build_github.sh /
COPY $GITHUB_WORKSPACE/cv_page1_plain.svg /
COPY $GITHUB_WORKSPACE/cv_page2_plain.svg /
COPY $GITHUB_WORKSPACE/preprocess.py /

RUN apt update
RUN apt install -y python-is-python3
RUN apt install -y inkscape

RUN apt install -y pdftk



ENTRYPOINT ["/bin/sh", "build_github.sh"]



