FROM debian:latest
RUN apt update
RUN apt install git
RUN git pull htpps://github.com/belozertsev/sysProg
CMD ./sysProg/script.sh