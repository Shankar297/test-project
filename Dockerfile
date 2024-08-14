FROM ubuntu

RUN apt-get update \
    && apt-get install python3 git pip unzip curl -y \
    && apt-get upgrade -y \
    && pip install python-dotenv \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip";unzip awscliv2.zip; ./aws/install \
    && mkdir code_files


COPY ./files/ /code_files/

WORKDIR /code_files