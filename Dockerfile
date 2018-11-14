FROM ubuntu:latest
MAINTAINER Florian Schroeder <florian@yinkan.de>

# install required packages
RUN apt-get update -y
RUN apt-get install -y apt-utils dialog >/dev/null
RUN apt-get install -y rubygems >/dev/null
RUN apt-get install -y locales >/dev/null
RUN echo "en_US UTF-8" > /etc/locale.gen
RUN locale-gen en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN export LANGUAGE=en_US:en
RUN export LC_ALL=en_US.UTF-8

# install Markdown to PDF
RUN gem install kramdown
RUN gem install prawn
RUN gem install prawn-table

# install AsciiDoc to PDF
RUN gem install asciidoctor-pdf --pre
RUN gem install rouge
RUN gem install coderay

# install git
RUN apt-get install -y git >/dev/null
RUN apt-get install -y wget >/dev/null

