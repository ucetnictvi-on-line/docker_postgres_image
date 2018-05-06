FROM postgres:10

RUN apt-get update
RUN apt-get install -y build-essential cmake git
RUN apt-get install -y postgresql-server-dev-10

RUN cd /tmp
RUN git clone https://github.com/redrick/pg_amqp.git
RUN cd pg_amqp; make; make install;
