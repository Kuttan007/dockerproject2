FROM tomcat
WORKDIR /usr/local/tomcat/conf/
COPY server.xml .
WORKDIR /usr/local/tomcat/webapps/
ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war .
RUN jar -xvf sample.war
EXPOSE 8090
CMD ["catalina.sh", "run"]
