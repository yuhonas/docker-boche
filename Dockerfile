FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y mysql-server mysql-common mysql-client git imagemagick ruby1.8-dev ruby1.8 ri1.8 rdoc1.8 irb1.8 libreadline-ruby1.8 libruby1.8 libopenssl-ruby rubygems build-essential ruby-mysql libmysqlclient-dev
RUN gem install rubygems-update --version=1.3.4
RUN update_rubygems --version=1.3.4
RUN gem install rake --version=0.8.7 --no-ri --no-rdoc
RUN gem install mysql thin --no-ri --no-rdoc
RUN gem install rails --version=2.3.2 --no-ri
