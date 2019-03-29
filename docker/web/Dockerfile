FROM amazonlinux:1

RUN yum clean all
RUN yum -y update

RUN yum install -y php71 php71-cli php71-common php71-json php71-mbstring php71-mysqlnd php71-pdo php71-process php71-xml httpd24 httpd24-tools openssl zip unzip php71-zip git php71-gd

RUN yum install -y nano

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

# Install nodejs
RUN yum -y update

RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
RUN yum -y install nodejs
RUN curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
RUN yum -y install yarn

# Clear yum cache
RUN yum clean all

RUN mkdir -p /var/www/html/
RUN chmod -R 755 /var/www/html/

# config virtual host
ADD vhost.conf /etc/httpd/conf.d

# workspace
WORKDIR /var/www/html/
# for web
EXPOSE 80
EXPOSE 443

CMD /usr/sbin/httpd -DFOREGROUND
