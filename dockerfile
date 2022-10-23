FROM python:3.8-slim-buster

WORKDIR /app
ENV HOME=/app
ENV PATH=$PATH:${HOME}/.local/bin

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY src src

RUN chgrp -R 0 ${HOME} && \
    chmod -R g=u ${HOME}

USER 100001
ENTRYPOINT []
CMD [ "python3", "-u", "-m" , "src.main"]