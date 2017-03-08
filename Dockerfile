FROM postgres:9.6

MAINTAINER  Andrej Antas <andrej@antas.cz>

RUN apt-get update
RUN apt-get install -y build-essential cmake git
RUN apt-get install -y postgresql-server-dev-9.6

RUN cd /tmp
RUN git clone https://github.com/omniti-labs/pg_amqp.git
RUN cd pg_amqp; make; make install;
